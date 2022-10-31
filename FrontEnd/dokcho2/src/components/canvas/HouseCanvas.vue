<template>
  <div>
    <button @click="changeCanvas">바꾸기2</button>
    <div id="house">
      <!-- <monsterDetail
        v-show="monster === true"
        @showMonster="showMonster"
        :monsterDetail="this.monsterDetail"
        :monster="this.monster"
      /> -->
    </div>
  </div>
</template>

<script>
import * as THREE from 'three'
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls.js'

import { GLTFLoader } from 'three/examples/jsm/loaders/GLTFLoader.js'
// import Stats from 'three/examples/jsm/libs/stats.module.js'

import { Octree } from 'three/examples/jsm/math/Octree.js'
import { Capsule } from 'three/examples/jsm/math/Capsule.js'

import axios from 'axios'
import { BASE_URL } from '@/constant/BASE_URL'
import Swal from 'sweetalert2'

// import monsterDetail from '../monster/monsterDetail.vue'

export default {
  name: 'HouseView',
  // components: {
  //   monsterDetail: monsterDetail
  // },
  props: {
    nowPage: Number
  },
  data() {
    return {
      previousDirectionOffset: 0,

      speed: 0,
      maxSpeed: 0,
      acceleration: 0,

      bOnTheGround: false,
      fallingAcceleration: 0,
      fallingSpeed: 0,
      jumpingSpeed: 0,

      isPressed: false,

      //raycaster
      raycaster: new THREE.Raycaster(),
      mouse: new THREE.Vector2(),
      meshes: [],

      // monsterdetail
      monster: false,
      monsterDetail: {}
    }
  },

  mounted() {
    this.init()
  },

  methods: {
    showMonster() {
      console.log(this.monster)
      if (this.monster === true) {
        this.monster = false
      } else {
        this.monster = true
      }
    },
    init() {
      this.fallingAcceleration = 0
      this.fallingSpeed = 0
      this.jumpingSpeed = 0

      // canvas === divContainer
      const divContainer = document.querySelector('#house')
      this._divContainer = divContainer

      const renderer = new THREE.WebGLRenderer({ antialias: true })
      renderer.setPixelRatio(window.devicePixelRatio)
      divContainer.appendChild(renderer.domElement)

      renderer.shadowMap.enabled = true
      renderer.shadowMap.type = THREE.VSMShadowMap

      this._renderer = renderer

      const scene = new THREE.Scene()
      this._scene = scene

      // raycaster
      // this.raycaster = new THREE.Raycaster()

      // this.mouse = new THREE.Vector2()

      //this._setupOctree();
      this._setupCamera()
      this._setupLight()
      this._setupBack()
      this._setupModel()
      this._setupControls()

      window.onresize = this.resize.bind(this)
      this.resize()

      requestAnimationFrame(this.render.bind(this))
    },

    // check click
    checkIntersects() {
      // console.log('intersects 실행됨')
      this.raycaster.setFromCamera(this.mouse, this._camera)
      // console.log('meshes', this.meshes[0])
      const intersects = this.raycaster.intersectObjects(this.meshes)
      for (const item of intersects) {
        if (item.object.name[0] === 'monster') {
          let monsterId = item.object.name[1]
          // console.log(monsterId)
          axios({
            url: BASE_URL + '/api/v1/monster/' + monsterId,
            method: 'GET',
            headers: {
              AUTHORIZATION: 'Bearer ' + localStorage.getItem('accessToken')
            }
          })
            .then((res) => {
              this.monsterDetail = res.data

              Swal.fire(`${this.monsterDetail.name}`)
              this.showMonster()
            })
            .catch((err) => {
              console.log(err)
            })
        } else {
          console.log('안들어감')
        }
        break
      }

      // console.log(intersects[0].name)
      // console.log(this._model.children)
    },

    _setupOctree(model) {
      this._worldOctree = new Octree()
      this._worldOctree.fromGraphNode(model)
    },

    _setupControls() {
      this._controls = new OrbitControls(this._camera, this._divContainer)
      this._controls.target.set(0, 100, 0)
      this._controls.enablePan = false
      this._controls.enableDamping = true

      // const stats = new Stats()
      // this._divContainer.appendChild(stats.dom)
      // this._fps = stats

      this._pressedKeys = {}

      document.addEventListener('keydown', (event) => {
        this._pressedKeys[event.key.toLowerCase()] = true
        this._processAnimation()
      })

      document.addEventListener('keyup', (event) => {
        this._pressedKeys[event.key.toLowerCase()] = false
        this._processAnimation()
      })

      // document.addEventListener('click', () => {})

      // 클릭 이벤트 바인딩
      document.addEventListener('click', (e) => {
        this.mouse.x = (e.clientX / this._divContainer.clientWidth) * 2 - 1
        this.mouse.y = -((e.clientY / this._divContainer.clientHeight) * 2 - 1)
        // console.log(this.mouse.x)
        this.checkIntersects()
      })
    },

    _processAnimation() {
      const previousAnimationAction = this._currentAnimationAction

      if (this.nowPage === 1) {
        if (
          this._pressedKeys['w'] ||
          this._pressedKeys['a'] ||
          this._pressedKeys['s'] ||
          this._pressedKeys['d'] ||
          this._pressedKeys['shift']
        ) {
          this.maxSpeed = 350
          this.acceleration = 3
          //   if (this._pressedKeys['shift']) {
          //     this._currentAnimationAction = this._animationMap['Run']
          //     // this.speed = 350;
          //     this.maxSpeed = 350
          //     this.acceleration = 3
          //   } else {
          //     this._currentAnimationAction = this._animationMap['Walk']
          //     //this.speed = 80;
          //     this.maxSpeed = 80
          //     this.acceleration = 3
          //   }
        } else {
          // this._currentAnimationAction = this._animationMap['Idle']
          this.speed = 0
          this.maxSpeed = 0
          this.acceleration = 0
        }

        if (previousAnimationAction !== this._currentAnimationAction) {
          previousAnimationAction.fadeOut(0.5)
          this._currentAnimationAction.reset().fadeIn(0.5).play()
        }
      }
    },

    _setupModel() {
      // const planeGeometry = new THREE.PlaneGeometry(1000, 1000);
      // const planeMaterial = new THREE.MeshPhongMaterial({ color: 0x878787 });
      // const plane = new THREE.Mesh(planeGeometry, planeMaterial);
      // plane.rotation.x = -Math.PI/2;
      // this._scene.add(plane);
      // plane.receiveShadow = true;

      // this._worldOctree.fromGraphNode(plane);
      const loader = new GLTFLoader()

      loader.load('/models/character.glb', (gltf) => {
        gltf.scene.scale.set(10, 10, 10)
        const model = gltf.scene
        this._scene.add(model)

        model.traverse((child) => {
          if (child instanceof THREE.Mesh) {
            child.castShadow = true
          }
        })

        const animationClips = gltf.animations // THREE.AnimationClip[]
        const mixer = new THREE.AnimationMixer(model)
        const animationsMap = {}
        animationClips.forEach((clip) => {
          const name = clip.name
          console.log(name)
          animationsMap[name] = mixer.clipAction(clip) // THREE.AnimationAction
        })

        this._mixer = mixer
        // this._animationMap = animationsMap
        // this._currentAnimationAction = this._animationMap['Idle']
        // this._currentAnimationAction.play()

        const box = new THREE.Box3().setFromObject(model)
        model.position.y = (box.max.y - box.min.y) / 2

        const height = box.max.y - box.min.y
        const diameter = box.max.z - box.min.z
        console.log(diameter)

        model._capsule = new Capsule(
          new THREE.Vector3(0, diameter / 2, 0),
          new THREE.Vector3(0, height - diameter / 2, 0),
          diameter / 2
        )
        console.log(this._worldOctree)
        console.log(model._capsule)

        const axisHelper = new THREE.AxesHelper(1000)
        this._scene.add(axisHelper)

        const boxHelper = new THREE.BoxHelper(model)
        this._scene.add(boxHelper)
        this._boxHelper = boxHelper
        this._model = model

        const boxG = new THREE.BoxGeometry(100, diameter - 5, 100)
        const boxM = new THREE.MeshStandardMaterial({ color: 'plum' })
        const boxbox = new THREE.Mesh(boxG, boxM)
        boxbox.name = ['monster', 1]
        boxbox.receiveShadow = true
        boxbox.castShadow = true
        boxbox.position.set(0, 0, 0)
        this._scene.add(boxbox)
        this.meshes.push(boxbox)

        this._worldOctree.fromGraphNode(boxbox)

        console.log(model)
      })
    },

    async _setupBack() {
      const loader = new GLTFLoader()

      await loader.load('/models/space.glb', (gltf) => {
        // gltf.scene.scale.set(0.1, 0.1, 0.1)
        const model = gltf.scene

        this._scene.add(model)

        model.traverse((child) => {
          if (child instanceof THREE.Mesh) {
            child.castShadow = true
            child.receiveShadow = true
          }
        })
        this._setupOctree(model)
      })
      // this._setupModel()
    },

    _setupBback() {
      const textureLoader = new THREE.TextureLoader()
      const floorTexture = textureLoader.load('/images/grid.png')
      floorTexture.wrapS = THREE.RepeatWrapping
      floorTexture.wrapT = THREE.RepeatWrapping
      floorTexture.repeat.x = 10
      floorTexture.repeat.y = 10

      const floorMesh = new THREE.Mesh(
        new THREE.PlaneGeometry(100, 100),
        new THREE.MeshStandardMaterial({
          map: floorTexture
        })
      )
      floorMesh.name = 'floor'
      floorMesh.rotation.x = -Math.PI / 2
      floorMesh.receiveShadow = true
      this._scene.add(floorMesh)
      this._setupOctree(floorMesh)

      setTimeout(this._setupModel(), 1000)
    },

    _setupCamera() {
      const camera = new THREE.PerspectiveCamera(
        60,
        window.innerWidth / window.innerHeight,
        1,
        5000
      )

      camera.position.set(0, 100, 500)
      this._camera = camera
    },

    _addPointLight(x, y, z, helperColor) {
      const color = 0xffffff
      const intensity = 1.5

      const pointLight = new THREE.PointLight(color, intensity, 2000)
      pointLight.position.set(x, y, z)

      this._scene.add(pointLight)

      const pointLightHelper = new THREE.PointLightHelper(
        pointLight,
        10,
        helperColor
      )
      this._scene.add(pointLightHelper)
    },

    _setupLight() {
      const ambientLight = new THREE.AmbientLight(0xffffff, 0.5)
      this._scene.add(ambientLight)

      this._addPointLight(500, 150, 500, 0xff0000)
      this._addPointLight(-500, 150, 500, 0xffff00)
      this._addPointLight(-500, 150, -500, 0x00ff00)
      this._addPointLight(500, 150, -500, 0x0000ff)

      const shadowLight = new THREE.DirectionalLight(0xffffff, 0.2)
      shadowLight.position.set(200, 500, 200)
      shadowLight.target.position.set(0, 0, 0)
      const directionalLightHelper = new THREE.DirectionalLightHelper(
        shadowLight,
        10
      )
      this._scene.add(directionalLightHelper)

      this._scene.add(shadowLight)
      this._scene.add(shadowLight.target)

      shadowLight.castShadow = true
      shadowLight.shadow.mapSize.width = 1024
      shadowLight.shadow.mapSize.height = 1024
      shadowLight.shadow.camera.top = shadowLight.shadow.camera.right = 700
      shadowLight.shadow.camera.bottom = shadowLight.shadow.camera.left = -700
      shadowLight.shadow.camera.near = 100
      shadowLight.shadow.camera.far = 900
      shadowLight.shadow.radius = 5
      const shadowCameraHelper = new THREE.CameraHelper(
        shadowLight.shadow.camera
      )
      this._scene.add(shadowCameraHelper)
    },

    _directionOffset() {
      const pressedKeys = this._pressedKeys
      let directionOffset = 0 // w

      if (pressedKeys['w']) {
        if (pressedKeys['a']) {
          directionOffset = Math.PI / 4 // w+a (45도)
        } else if (pressedKeys['d']) {
          directionOffset = -Math.PI / 4 // w+d (-45도)
        }
      } else if (pressedKeys['s']) {
        if (pressedKeys['a']) {
          directionOffset = Math.PI / 4 + Math.PI / 2 // s+a (135도)
        } else if (pressedKeys['d']) {
          directionOffset = -Math.PI / 4 - Math.PI / 2 // s+d (-135도)
        } else {
          directionOffset = Math.PI // s (180도)
        }
      } else if (pressedKeys['a']) {
        directionOffset = Math.PI / 2 // a (90도)
      } else if (pressedKeys['d']) {
        directionOffset = -Math.PI / 2 // d (-90도)
      } else {
        directionOffset = this.previousDirectionOffset
      }

      this.previousDirectionOffset = directionOffset

      return directionOffset
    },

    update(time) {
      time *= 0.001 // second unit

      this._controls.update()

      if (this._boxHelper) {
        this._boxHelper.update()
      }

      // this._fps.update()

      if (this._mixer) {
        const deltaTime = time - this._previousTime
        this._mixer.update(deltaTime)

        const angleCameraDirectionAxisY =
          Math.atan2(
            this._camera.position.x - this._model.position.x,
            this._camera.position.z - this._model.position.z
          ) + Math.PI

        const rotateQuarternion = new THREE.Quaternion()
        rotateQuarternion.setFromAxisAngle(
          new THREE.Vector3(0, 1, 0),
          angleCameraDirectionAxisY + this._directionOffset()
        )

        this._model.quaternion.rotateTowards(
          rotateQuarternion,
          THREE.MathUtils.degToRad(5)
        )

        const walkDirection = new THREE.Vector3()
        this._camera.getWorldDirection(walkDirection)

        //walkDirection.y = 0;
        walkDirection.y = this.bOnTheGround ? 0 : -1
        walkDirection.normalize()

        walkDirection.applyAxisAngle(
          new THREE.Vector3(0, 1, 0),
          this._directionOffset()
        )

        if (this.speed < this.maxSpeed) this.speed += this.acceleration
        else this.speed -= this.acceleration * 2

        if (!this.bOnTheGround) {
          // this.fallingAcceleration += 0.1
          // this.fallingSpeed += Math.pow(this.fallingAcceleration, 2)
          this.fallingSpeed = 300
        } else {
          this.fallingAcceleration = 0
          this.fallingSpeed = 0
        }

        const velocity = new THREE.Vector3(
          walkDirection.x * this.speed,
          walkDirection.y * this.fallingSpeed,
          walkDirection.z * this.speed
        )

        const deltaPosition = velocity.clone().multiplyScalar(deltaTime)

        // const moveX = walkDirection.x * (this.speed * deltaTime);
        // const moveZ = walkDirection.z * (this.speed * deltaTime);

        // this._model.position.x += moveX;
        // this._model.position.z += moveZ;

        this._model._capsule.translate(deltaPosition)

        const result = this._worldOctree.capsuleIntersect(this._model._capsule)
        if (result) {
          // 충돌한 경우
          this._model._capsule.translate(
            result.normal.multiplyScalar(result.depth)
          )
          this.bOnTheGround = true
        } else {
          // 충돌하지 않은 경우
          this.bOnTheGround = false
        }

        const previousPosition = this._model.position.clone()
        const capsuleHeight =
          this._model._capsule.end.y -
          this._model._capsule.start.y +
          this._model._capsule.radius * 2
        this._model.position.set(
          this._model._capsule.start.x,
          this._model._capsule.start.y -
            this._model._capsule.radius +
            capsuleHeight / 2,
          this._model._capsule.start.z
        )

        // this._camera.position.x += moveX;
        // this._camera.position.z += moveZ;
        this._camera.position.x -= previousPosition.x - this._model.position.x
        this._camera.position.z -= previousPosition.z - this._model.position.z

        this._controls.target.set(
          this._model.position.x,
          this._model.position.y,
          this._model.position.z
        )
      }
      this._previousTime = time
    },

    render(time) {
      this._renderer.render(this._scene, this._camera)
      this.update(time)

      requestAnimationFrame(this.render.bind(this))
    },

    resize() {
      const width = 600
      const height = 600

      this._camera.aspect = width / height
      this._camera.updateProjectionMatrix()

      this._renderer.setSize(width, height)
    },

    changeCanvas() {
      this.$emit('changeCanvas')
    }
  }
}
</script>

<style scoped>
* {
  outline: none;
  margin: 0;
}
#house {
  width: 600px;
  height: 600px;
}
</style>