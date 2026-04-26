using Config.Bean;
using Config.Define;
using Eevee.Fixed;
using System;
using System.Linq;
using UnityEngine;

namespace Config
{
    internal static class TypeConverter
    {
        internal static TerrainType As(TerrainEnum source) => Enum.Parse<TerrainType>(source.Value);
        internal static TerrainType As(TerrainsEnum source) => source.Value.Split(',').Aggregate(TerrainType.None, (current, terrain) => current | Enum.Parse<TerrainType>(terrain));
        internal static Fixed64 As(FiniteNumber source) => Fixed64.Parse(source.Value);
        internal static Vector2DInt As(Vec2Int source) => new(source.X, source.Y);
        internal static Color As(RGBA32 source) => new Color32((byte)source.Red, (byte)source.Green, (byte)source.Blue, (byte)source.Alpha);
    }
}