function toggle_education()
{
    if(document.getElementById("education").style.display == "none")
        document.getElementById("education").style.display = "block";
    else
        document.getElementById("education").style.display = "none";
}
function random_meter()
{
    let m = document.getElementById("meter");
    m.value = Math.ceil(Math.random()*10);
}