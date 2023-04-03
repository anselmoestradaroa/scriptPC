$sound = new-Object System.Media.SoundPlayer; 
$sound.SoundLocation = "160483__koyber__casio-f-91w-hour-chime.wav";

[int]$hora = Get-Date -Format "HH"


if ($hora -le 12) {
    for ($i = ($hora - 1) ; $i -ge 0; $i--) {
        $sound.Play(); # If called using "powershell -file thisfile.ps1", you need to add a delay, # otherwise the script ends before the sound has played. 
        Start-Sleep -s 1
    }
} else {
    for ($i = ($hora - 1) ; $i -ge 12; $i--) {
        $sound.Play(); # If called using "powershell -file thisfile.ps1", you need to add a delay, # otherwise the script ends before the sound has played. 
        Start-Sleep -s 1
    }
}
