<template>
  <q-card class="" style="height">
    <q-card-section class="q-pb-none">
      <div class="text-h6 text-center">Objects</div>
      <space />
    </q-card-section>
    <q-card-section class="q-pt-none">
      <Slider :axis="pose" @update:value="updateValue" @change="value=>userLogger.addAction({'name': 'Change weight', 'Axis': 'Object', 'Value':value })"></Slider>
      <div class="row">
        <q-checkbox
          class="col-4"
          v-for="(object, index) in objects"
          :key="index"
          :label="object.label"
          v-model="object.bool"
          @update:model-value="userLogger.addAction({'name': 'Changed object','object':object.label, 'value' : object.bool})"
        />
      </div>
    </q-card-section>
  </q-card>
</template>

<script>
import { defineComponent, ref } from "vue";
import Slider from "../components/Slider.vue";

export default defineComponent({
  components: { Slider },
  name: "ObjectsCard",
  props: {
    objects: {
      required: true,
    },
    userLogger: {
      required: true,
    },
  },
  setup() {
    const pose = ref({
      name: "",
      value: 0.5,
    });
    return {
      pose,
    };
  },
  methods: {
    updateValue(axis) {
      this.$emit("update:value", { value: axis.value });
      this.pose.value = axis.value;
    },
  },
});
</script>
