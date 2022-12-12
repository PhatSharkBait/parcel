using System.Collections.Generic;
using UnityEngine;

public class PlayRandomAudio : MonoBehaviour {
    public AudioSource audioClip;
    public List<AudioClip> audioClips;

    public void PlayRandomClip() {
        var num = Random.Range(0, audioClips.Count);
        audioClip.PlayOneShot(audioClips[num]);
    }
}
