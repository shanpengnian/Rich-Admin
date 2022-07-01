<template>
  <div class="app-container home p-0" style="background-color: #f0f2f5">
    <div class="app_box">
      <el-row>
        <el-col :xs="24" :sm="24" :md="24" :lg="8" :xl="8">
          <el-card shadow="always" :body-style="{ padding: '0px !important' }">
            <el-carousel trigger="click" height="168px">
              <el-carousel-item v-for="item in 4" :key="item">
                <div class="items-bander">
                  <img src="https://www.sxpcwlkj.com/wp-content/uploads/2022/02/2022021416164173.jpg" />
                </div>
              </el-carousel-item>
            </el-carousel>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="24" :md="24" :lg="16" :xl="16">
          <el-row>
            <el-col :xs="12" :sm="12" :md="6" :lg="6" :xl="6">
              <el-card shadow="always" @click="router.push('/system/dept')">
                <el-row>
                  <el-col :span="6">
                    <div style="
                        background: rgb(85, 132, 253);
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        position: relative;
                      ">
                      <el-icon><MessageBox style="
                          width: 25px;
                          height: 25px;
                          margin-right: 8px;
                          position: absolute;
                          top: 8px;
                          left: 8px;
                          color: aliceblue;
                        " /></el-icon>
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="height: 40px; line-height: 40px">
                      <span>部门管理</span>
                    </div>
                  </el-col>
                </el-row>
              </el-card>
            </el-col>
            <el-col :xs="12" :sm="12" :md="6" :lg="6" :xl="6">
              <el-card shadow="always"  @click="jumpTo('/system/dept',{ID:1})">
                <el-row>
                  <el-col :span="6">
                    <div style="
                        background: rgb(52, 112, 255);
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        position: relative;
                      ">
                      <el-icon><Avatar style="
                          width: 25px;
                          height: 25px;
                          margin-right: 8px;
                          position: absolute;
                          top: 8px;
                          left: 8px;
                          color: aliceblue;
                        " /></el-icon>
                      
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="height: 40px; line-height: 40px">
                      <span>用户管理</span>
                    </div>
                  </el-col>
                </el-row>
              </el-card>
            </el-col>
            <el-col :xs="12" :sm="12" :md="6" :lg="6" :xl="6">
              <el-card shadow="always" @click="router.push('/system/post')">
                <el-row>
                  <el-col :span="6">
                    <div style="
                        background: rgb(255, 136, 1);
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        position: relative;
                      ">
                      <Ship style="
                          width: 25px;
                          height: 25px;
                          margin-right: 8px;
                          position: absolute;
                          top: 8px;
                          left: 8px;
                          color: aliceblue;
                        " />
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="height: 40px; line-height: 40px">
                      <span>岗位管理</span>
                    </div>
                  </el-col>
                </el-row>
              </el-card>
            </el-col>
            <el-col :xs="12" :sm="12" :md="6" :lg="6" :xl="6">
              <el-card shadow="always" @click="router.push('/system/role')">
                <el-row>
                  <el-col :span="6">
                    <div style="
                        background: rgb(0, 214, 185);
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        position: relative;
                      ">
                      <SetUp style="
                          width: 25px;
                          height: 25px;
                          margin-right: 8px;
                          position: absolute;
                          top: 8px;
                          left: 8px;
                          color: aliceblue;
                        " />
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="height: 40px; line-height: 40px">
                      <span>角色管理</span>
                    </div>
                  </el-col>
                </el-row>
              </el-card>
            </el-col>
            <el-col :xs="12" :sm="12" :md="6" :lg="6" :xl="6">
              <el-card shadow="always" @click="router.push('/index')">
                <el-row>
                  <el-col :span="6">
                    <div style="
                        background: rgb(85, 132, 253);
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        position: relative;
                      ">
                      
                      <SoldOut style="
                          width: 25px;
                          height: 25px;
                          margin-right: 8px;
                          position: absolute;
                          top: 8px;
                          left: 8px;
                          color: aliceblue;
                        " />
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="height: 40px; line-height: 40px">
                      <span>商品管理</span>
                    </div>
                  </el-col>
                </el-row>
              </el-card>
            </el-col>
            <el-col :xs="12" :sm="12" :md="6" :lg="6" :xl="6">
              <el-card shadow="always" @click="router.push('/index')">
                <el-row>
                  <el-col :span="6">
                    <div style="
                        background: #FF5722;
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        position: relative;
                      ">
                     
                      <Van style="
                          width: 25px;
                          height: 25px;
                          margin-right: 8px;
                          position: absolute;
                          top: 8px;
                          left: 8px;
                          color: aliceblue;
                        " />
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="height: 40px; line-height: 40px">
                      <span>物流管理</span>
                    </div>
                  </el-col>
                </el-row>
              </el-card>
            </el-col>
            <el-col :xs="12" :sm="12" :md="6" :lg="6" :xl="6">
              <el-card shadow="always" @click="router.push('/index')">
                <el-row>
                  <el-col :span="6">
                    <div style="
                        background: #9C27B0;
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        position: relative;
                      ">
                      <Shop style="
                          width: 25px;
                          height: 25px;
                          margin-right: 8px;
                          position: absolute;
                          top: 8px;
                          left: 8px;
                          color: aliceblue;
                        " />
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="height: 40px; line-height: 40px">
                      <span>店铺管理</span>
                    </div>
                  </el-col>
                </el-row>
              </el-card>
            </el-col>
            <el-col :xs="12" :sm="12" :md="6" :lg="6" :xl="6">
              <el-card shadow="always" @click="router.push('/index')">
                <el-row>
                  <el-col :span="6">
                    <div style="
                        background: rgb(85, 132, 253);
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        position: relative;
                      ">
                      <Goods style="
                          width: 25px;
                          height: 25px;
                          margin-right: 8px;
                          position: absolute;
                          top: 8px;
                          left: 8px;
                          color: aliceblue;
                        " />
                    </div>
                  </el-col>
                  <el-col :span="18">
                    <div style="height: 40px; line-height: 40px">
                      <span>订单管理</span>
                    </div>
                  </el-col>
                </el-row>
              </el-card>
            </el-col>
          </el-row>
        </el-col>
      </el-row>
      <el-row>
        <el-col :xs="12" :sm="12" :md="6" :lg="4" :xl="4">
          <el-card shadow="always" @click="router.push('/system/oss')">
            <el-row>
              <el-col :span="6">
                <div style="
                    background: rgb(0, 214, 185);
                    width: 40px;
                    height: 40px;
                    border-radius: 50%;
                    position: relative;
                  ">
                  <Box style="
                      width: 25px;
                      height: 25px;
                      margin-right: 8px;
                      position: absolute;
                      top: 8px;
                      left: 8px;
                      color: aliceblue;
                    " />
                </div>
              </el-col>
              <el-col :span="18">
                <div style="height: 40px; line-height: 40px">
                  <span>文件管理</span>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="12" :sm="12" :md="6" :lg="4" :xl="4">
          <el-card shadow="always" @click="router.push('/monitor/operlog')">
            <el-row>
              <el-col :span="6">
                <div style="
                    background: rgb(255, 136, 1);
                    width: 40px;
                    height: 40px;
                    border-radius: 50%;
                    position: relative;
                  ">
                  <Clock style="
                      width: 25px;
                      height: 25px;
                      margin-right: 8px;
                      position: absolute;
                      top: 8px;
                      left: 8px;
                      color: aliceblue;
                    " />
                </div>
              </el-col>
              <el-col :span="18">
                <div style="height: 40px; line-height: 40px">
                  <span>日志管理</span>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="12" :sm="12" :md="6" :lg="4" :xl="4">
          <el-card shadow="always"  @click="router.push('/system/notice')">
            <el-row>
              <el-col :span="6">
                <div style="
                    background: rgb(85, 132, 253);
                    width: 40px;
                    height: 40px;
                    border-radius: 50%;
                    position: relative;
                  ">
                  <Bell style="
                      width: 25px;
                      height: 25px;
                      margin-right: 8px;
                      position: absolute;
                      top: 8px;
                      left: 8px;
                      color: aliceblue;
                    " />
                </div>
              </el-col>
              <el-col :span="18">
                <div style="height: 40px; line-height: 40px">
                  <span>通知公告</span>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="12" :sm="12" :md="6" :lg="4" :xl="4">
          <el-card shadow="always"  @click="router.push('/monitor/online')">
            <el-row>
              <el-col :span="6">
                <div style="
                    background: #8BC34A;
                    width: 40px;
                    height: 40px;
                    border-radius: 50%;
                    position: relative;
                  ">
                  <User style="
                      width: 25px;
                      height: 25px;
                      margin-right: 8px;
                      position: absolute;
                      top: 8px;
                      left: 8px;
                      color: aliceblue;
                    " />
                </div>
              </el-col>
              <el-col :span="18">
                <div style="height: 40px; line-height: 40px">
                  <span>在线用户</span>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="12" :sm="12" :md="6" :lg="4" :xl="4">
          <el-card shadow="always" @click="router.push('/monitor/xxljob')">
            <el-row>
              <el-col :span="6">
                <div style="
                    background: rgb(85, 132, 253);
                    width: 40px;
                    height: 40px;
                    border-radius: 50%;
                    position: relative;
                  ">
                  <Watch style="
                      width: 25px;
                      height: 25px;
                      margin-right: 8px;
                      position: absolute;
                      top: 8px;
                      left: 8px;
                      color: aliceblue;
                    " />
                </div>
              </el-col>
              <el-col :span="18">
                <div style="height: 40px; line-height: 40px">
                  <span>调度中心</span>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="12" :sm="12" :md="6" :lg="4" :xl="4">
          <el-card shadow="always" @click="router.push('/monitor/cache')">
            <el-row>
              <el-col :span="6">
                <div style="
                    background: rgb(255, 136, 1);
                    width: 40px;
                    height: 40px;
                    border-radius: 50%;
                    position: relative;
                  ">
                  <PartlyCloudy style="
                      width: 25px;
                      height: 25px;
                      margin-right: 8px;
                      position: absolute;
                      top: 8px;
                      left: 8px;
                      color: aliceblue;
                    " />
                </div>
              </el-col>
              <el-col :span="18">
                <div style="height: 40px; line-height: 40px">
                  <span>缓存监管</span>
                </div>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
      </el-row>

      <el-row>
        <el-col :xs="24" :sm="24" :md="24" :lg="24" :xl="24">
          <el-card class="box-card">
            <template #header>
              <div class="card-header">
                <span>Rich Admin</span>
              </div>
            </template>
            <el-row>
              <el-col :span="24">
                <span style="line-height: 30px">
                  &emsp;&emsp;Rich Admin
                  丰富的综合管理系统，是“陕西品创网络科技有限公司”旗下产品，基于经典技术组合，参考主流技术框架封装高效安全可靠四合一(PC、APP、小程序、公众号)管理系统，特色功能有系统管理、系统监控、文章系统、多租户店铺、商城、直播、超话、话题室等特色功支持分销运营机制定期更新!
                </span>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
      </el-row>

      <el-row>
        <el-col :xs="24" :sm="24" :md="24" :lg="8" :xl="8">
          <el-card class="box-card">
            <template #header>
              <div class="card-header">
                <span>待办事项</span>
              </div>
            </template>
            <el-row :gutter="20">
              <el-col :span="8">
                <div class="dbdiv">
                  <p>待审批</p>
                  <span>5</span>
                </div>
              </el-col>
              <el-col :span="8">
                <div class="dbdiv">
                  <p>待提交</p>
                  <span>15</span>
                </div>
              </el-col>
              <el-col :span="8">
                <div class="dbdiv">
                  <p>待阅示</p>
                  <span>11</span>
                </div>
              </el-col>
              <el-col :span="24">
                <ul class="p-0 m-0 todo_list">
                  <li v-for="item in 5" :key="item">
                    <p>【待审批】</p>
                    <span>公告发布审批公告发布审批公告发布审批公告发布审批公告发布审批公告发布审批公告发布审批公告发布审批</span>
                  </li>
                </ul>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="24" :md="24" :lg="8" :xl="8">
          <el-card class="box-card">
            <template #header>
              <div class="card-header">
                <span>热销产品</span>
              </div>
            </template>
            <el-row :gutter="20">
              <el-col :span="24">
                <ul class="top_list">
                  <li v-for="item in 8" :key="item">
                    <el-tag class="list-type">1</el-tag>
                    <span class="list-text">防冻新款汽车玻璃水800ML</span>
                    <div class="list-right">
                      <span class="list-number">1080</span>
                      <span class="list-icon m-l-5">
                        <el-icon color="#f76767">
                          <Flag />
                        </el-icon>
                      </span>
                    </div>
                  </li>
                </ul>
              </el-col>
            </el-row>
          </el-card>
        </el-col>
        <el-col :xs="24" :sm="24" :md="24" :lg="8" :xl="8">
          <el-card class="box-card">
            <template #header>
              <div class="card-header">
                <span>数据分析</span>
              </div>
            </template>
            <el-row :gutter="20">
              <div ref="chinaMap" :style="{ width: width, height: height }"></div>
            </el-row>
          </el-card>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script lang="ts" setup name="Index">
import * as echarts from 'echarts'
import chinaJSON from '../assets/json/china.json'
import { onMounted, ref } from 'vue'
import { useRouter } from 'vue-router';
const router = useRouter();
const width = '100%'
const height = '323px'
const item = [1, 2, 3, 4];

function novTo(path,query){
    router.push({ path: path || "/" ,query:{'ID':1}});
}

const jumpTo = (path,query) => {
  // 编程式跳转和传参
  router.push({
    path: path || "/",
    query: {
      msg: '这是路由传入的参数'
    }
  })
};


const chinaMap = ref()
onMounted(() => {
  drawChina()
})
let regions = [
  {
    name: '新疆维吾尔自治区',
    itemStyle: {
      areaColor: '#374ba4',
      opacity: 1,
    },
  },
  {
    name: '四川省',
    itemStyle: {
      areaColor: '#fe9b45',
      opacity: 1,
    },
  },
  {
    name: '陕西省',
    itemStyle: {
      areaColor: '#fd691b',
      opacity: 1,
    },
  },
  {
    name: '黑龙江省',
    itemStyle: {
      areaColor: '#ffc556',
      opacity: 1,
    },
  },
]
let scatter = [
  { name: '北京烤鸭', value: [116.46122, 39.97886, 9] },
  { name: '兰州拉面', value: [103.86615, 36.040129, 9] },
  { name: '新疆烤肉', value: [87.613228, 43.810394, 9] },
  { name: '长沙臭豆腐', value: [112.915204, 28.207735, 9] },
  { name: '西安肉夹馍', value: [108.953445, 34.288842, 9] },
  { name: '云南', value: [102.710002, 25.045806, 9] },
]
function drawChina() {
  var myChart = echarts.init(chinaMap.value)
  echarts.registerMap('china', chinaJSON) //注册可用的地图
  var option = {
    geo: {
      map: 'china',
      roam: true, //是否允许缩放，拖拽
      zoom: 1, //初始化大小
      //缩放大小限制
      scaleLimit: {
        min: 1, //最小
        max: 2, //最大
      },
      //设置中心点
      center: [115.97, 29.71],
      //省份地图添加背景
      regions: regions,
      itemStyle: {
        areaColor: '#0b122e',
        color: 'red',
        borderColor: '#232652',
        borderWidth: 2,
      },
      //高亮状态
      emphasis: {
        itemStyle: {
          areaColor: '#1af9e5',
          color: '#fff',
        },
      },
    },
    //配置属性
    series: {
      type: 'effectScatter',
      coordinateSystem: 'geo',
      data: scatter,
      showEffectOn: 'render',
      rippleEffect: {
        //涟漪特效相关配置
        brushType: 'stroke', //波纹的绘制方式，可选 'stroke' 和 'fill'
      },
      hoverAnimation: true, //是否开启鼠标 hover 的提示动画效果
      label: {
        //图形上的文本标签，可用于说明图形的一些数据信息，比如值，名称等，
        normal: {
          formatter: '{b}',
          position: 'right',
          show: true,
        },
      },
      itemStyle: {
        //图形样式，normal 是图形在默认状态下的样式；emphasis 是图形在高亮状态下的样式，比如在鼠标悬浮或者图例联动高亮时
        normal: {
          color: '#ffffff', //散点的颜色
          shadowBlur: 10,
          shadowColor: 20,
          fontSize: '12px',
        },
      },
      zlevel: 1,
    },
  }
  myChart.setOption(option)
}

</script>
<style scoped lang="scss">
.app_box .el-card {
  margin: 8px;
}

.dbdiv {
  background: #f7f9fa;
  border-radius: 4px;
  padding: 12px 16px;
}

.dbdiv p {
  font-size: 14px;
  color: #383838;
  margin: 0;
  line-height: 20px;
}

.dbdiv span {
  font-size: 24px;
  line-height: 32px;
  color: #5584fd;
}

.todo_list li {
  list-style: none;
  background: #f7f9fa;
  line-height: 20px;
  padding: 8px;
  margin: 11px 0;
  cursor: pointer;
  font-size: 14px;
}

.todo_list li p {
  display: inline-block;
  margin: 0 4px;
  vertical-align: middle;
}

.todo_list li span {
  display: inline-block;
  margin: 0 4px;
  width: calc(100% - 120px);
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  vertical-align: middle;
}

.card-header {
  padding: 16px 16px 0;
  line-height: 20px;
  font-size: 19px;
  font-weight: 600;
  border: 0;
}

.items-bander {
  width: 100%;
  height: 168px;
}

.items-bander img {
  width: 100%;
  height: 168px;
}

.home .idnex-box .el-card__body .box {
  padding: 16px;
  min-height: 240px;
}

.top_list {
  list-style: none;
  margin: 0;
  padding: 0;
}

.top_list li {
  padding: 8px;
  margin: 4px 0;
  position: relative;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
}

.top_list .list-type {
  display: inline-block;
  width: 20px;
  line-height: 20px;
  text-align: center;
  height: 20px;
  border-radius: 10px;
  vertical-align: middle;
  margin: 0 4px;
  border: 0;
  padding: 0;
}

.top_list .list-text {
  line-height: 18px;
  vertical-align: middle;
}

.top_list .list-right {
  position: absolute;
  right: 8px;
  top: 12px;
}

.chat-content {
  width: 100%;
  height: 150px;
}
</style>

