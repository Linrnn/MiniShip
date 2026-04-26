using System.IO;
using YooAsset.Editor;

namespace MiniShipEditor
{
    [DisplayName("收集图集")]
    internal sealed class CollectAtlas : IFilterRule
    {
        public string FindAssetType => nameof(EAssetSearchType.All);

        public bool IsCollectAsset(FilterRuleData data)
        {
            string extension = Path.GetExtension(data.AssetPath);
            return extension is ".spriteatlas" or ".spriteatlasv2";
        }
    }
}