<template>
   <i-frame v-model:src="url"></i-frame>
</template>

<script setup>
import iFrame from '@/components/iFrame'

const url = ref("http://120.92.142.115:81/vform3/")
</script>