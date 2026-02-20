1. Given the type
data FlowerType = Gardenia
| Daisy
| Rose
| Lilac
deriving Show
type Gardener = String
data Garden =
Garden Gardener FlowerType
deriving Show
What is the normal form of Garden?

Ans:



data Garden =  
     Gardenia  Gardener |  Daisy Gardener |  Rose Gardener |  Lilac Gardener
    deriving Show
-- The above is correct based on algebraic perspective
but it's illegal to use the same constructor again in the same module.
so we have:
data Garden
  = GardeniaGarden Gardener
  | DaisyGarden Gardener
  | RoseGarden Gardener
  | LilacGarden Gardener
  deriving Show
