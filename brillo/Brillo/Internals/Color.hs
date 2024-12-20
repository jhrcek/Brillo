{-# OPTIONS_HADDOCK hide #-}

module Brillo.Internals.Color where

import Brillo.Data.Color
import Graphics.Rendering.OpenGL.GL qualified as GL

import Unsafe.Coerce


-- | Convert one of our Colors to OpenGL's representation.
glColor4OfColor :: Color -> GL.Color4 a
glColor4OfColor color =
  case rgbaOfColor color of
    (r, g, b, a) ->
      let rF = unsafeCoerce r
          gF = unsafeCoerce g
          bF = unsafeCoerce b
          aF = unsafeCoerce a
      in  GL.Color4 rF gF bF aF
