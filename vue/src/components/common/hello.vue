<template>
  <section class="index">
    <div class="msg">
      <p class="title"><i class="el-icon-message-solid"></i>学校通知：</p>
      <ul>
        <li @click="openMsg()"><i class="iconfont icon-flag"></i>关于2023年“五四”青年节放假的通知</li>
        <li @click="openMsg()"><i class="iconfont icon-flag"></i>关于2023年“三八”妇女节放假的通知</li>
        <li @click="openMsg()"><i class="iconfont icon-flag"></i>关于2023年部分节假日安排的通知</li>
      </ul>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      user: { //用户信息
        userName: null,
        userId: null
      } 
    }
  },
  created() {
    this.getUserInfo()
  },
  methods: {
    getUserInfo() { //获取用户信息
      let userName = this.$cookies.get("cname")
      let userId = this.$cookies.get("cid")
      this.user.userName = userName
      this.user.userId = userId
    },
    openMsg() {
      this.$alert('各学院、部处：根据国务院《全国年节及纪念日放假办法》的有关规定，5月4日（青年节）下午，全体在校学生、28周岁及以下的教职员工放假半天，上午及晚上照常上课、上班。请各学院、部处通知到位，并做好工作安排。','关于2023年“五四”青年节放假的通知',{
        confirmButtonText: '确定'
      })
    }
  }
}
</script>


<style lang="less" scoped>
.index {
  margin-left: 70px;
  .hello {
    font-size: 20px;
    color: #726f70;
    .icon-xihuan {
      font-size: 30px;
      color: #dd6572;
    }
  }
  .msg {
    .title {
      font-size: 25px;
      color: #000;
      margin-top: 20px;
      // margin-left: 10px;
      margin-bottom: 10px;
    }
    .title i{
      margin-right: 5px;
    }
    ul {
      display: flex;
      flex-direction: column;
      width: 500px;
      overflow: hidden;
    }
    li {
      margin-top: 10px;
      font-size: 20px;
      color: lightcoral;
      cursor: pointer;
      display: inline-block;
    }
  }
}
</style>

