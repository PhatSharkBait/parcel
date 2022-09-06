using System.Collections.Generic;
using UnityEngine;
[CreateAssetMenu]
public class ColorIDDataList : ScriptableObject {
    public List<ColorID> colorIds;
    public ColorID currentColor;

    public void SetColorIDRandom() {
        currentColor = colorIds[Random.Range(0, colorIds.Count)];
    }
}
