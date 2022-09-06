public class ColorIDBehaviour : IDContainerBehaviour {
    public ColorIDDataList colorIDDataList;

    private void Awake() {
        idObj = colorIDDataList.currentColor;
    }
}
