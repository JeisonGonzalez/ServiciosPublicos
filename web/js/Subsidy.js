function cargarFormulario(id,name,description,startDate,endDate,waterValue,naturalGasWater,energyValue, type){
    $("#idSybsudy").val(id);
    $("#name").val(name);
    $("#description").val(description);
    $("#startDate").val(startDate);
    $("#endDate").val(endDate);
    $("#expectedNaturalGasValue").val(waterValue);
    $("#expectedWaterValue").val(naturalGasWater);
    $("#expectedEnergyValue").val(energyValue);
    $("#type").val(type);
    $("#myModal").modal();
}