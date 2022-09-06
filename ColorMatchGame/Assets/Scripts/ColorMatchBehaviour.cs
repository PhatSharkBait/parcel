using UnityEngine;

public class ColorMatchBehaviour : MatchBehaviour {
    public ColorIDDataList colorIDDataList;

    private void Awake() {
        idObj = colorIDDataList.currentColor;
    }

    public void ChangeColor(SpriteRenderer spriteRenderer) {
        var colorID = idObj as ColorID;
        spriteRenderer.color = colorID.value;
    }
}
