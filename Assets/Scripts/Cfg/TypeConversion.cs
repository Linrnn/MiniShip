using cfg.Bean;
using Eevee.Fixed;
using System;
using System.Linq;
using UnityEngine;

namespace cfg
{
    internal static class TypeConversion
    {
        internal static Fixed64 As(TypeFixed64 source) => Fixed64.Parse(source.Number);
        internal static Color As(TypeColor source) => new Color32(source.Red, source.Green, source.Blue, source.Alpha);
        internal static TerrainType As(TypeTerrainType source) => Enum.Parse<TerrainType>(source.Terrain);
        internal static TerrainType As(TypeTerrainTypes source) => source.Terrains.Split(',').Aggregate(TerrainType.None, (current, terrain) => current | Enum.Parse<TerrainType>(terrain));
        internal static Vector2Int As(TypeVector2Int source) => new(source.X, source.Y);
    }
}