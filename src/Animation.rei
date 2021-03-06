/**
 * Interpolates style
 */
type interpolator = BsReactNative.Animated.Value.t => BsReactNative.Style.t;

/**
 * Animation type
 *
 * Lots of logic used for `forX` interpolators has been inspired and borrowed by
 * great work by React Navigation team.
 *
 * You can browse their implementation on Github:
 * - /src/views/Header/HeaderStyleInterpolator.js
 */
type t = {
  func:
    (
      ~value: BsReactNative.Animated.Value.value,
      ~toValue: [
                  | `animated(BsReactNative.Animated.Value.value)
                  | `raw(float)
                ]
    ) =>
    BsReactNative.Animated.CompositeAnimation.t,
  forCard: interpolator,
  forHeader: interpolator,
};

/**
 * Slide in/out animation modelled after iOS platform interactions
 */
let slideHorizontal: t;

let fadeVertical: t;

/**
 * Platform-specific default animation that is picked by navigators when
 * nothing else is set
 */
let default: t;

/**
 * No animation
 */
let none: t;