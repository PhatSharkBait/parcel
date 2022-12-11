using System.Collections;
using Unity.Mathematics;
using UnityEngine;
using unityTools;
using UnityEngine.Events;

public class GameTimer : MonoBehaviour {
    public bool CanRun { get; set; }
    public bool TimerFinished { get; set; }

    public FloatDataSO amountInMinutes;
    public TimerBehaviour timerBehaviour;
    public UnityEvent timerFinishedEvent;
    public PoolList enemyPools;
    public EnemySpawnHandler enemySpawnHandler;
    public int timeSliceInSeconds, amountOfWaves;
    
    private WaitForSeconds _waitForSeconds;
    private int _targetSeconds, _currentSecond, _secondsPerWave;

    private void Awake() {
        _waitForSeconds = new WaitForSeconds(1f);
        _targetSeconds = (int)(amountInMinutes.value * 60);
        TimerFinished = false;
    }

    private void Start() {
        CanRun = true;
        _secondsPerWave = (int)math.ceil(_targetSeconds/ (float)amountOfWaves);
        StartTimer();
    }

    public void StartTimer() {
        StartCoroutine(Timer());
    }

    private IEnumerator Timer() {
        while (_currentSecond < _targetSeconds) {
            if (!CanRun) break;
            if (_currentSecond % timeSliceInSeconds == 0) {
                
            }

            if (_currentSecond % _secondsPerWave == 0) {
                
            }
            yield return _waitForSeconds;
            _currentSecond++;
            timerBehaviour.UpdateTimer(_currentSecond);
        }

        if (_currentSecond < _targetSeconds) yield break;
        TimerFinished = true;
        timerFinishedEvent.Invoke();
    }

    private void IncreaseDifficulty() {
        
    }
    private void NextWave() {
        
    }
    
    
}
