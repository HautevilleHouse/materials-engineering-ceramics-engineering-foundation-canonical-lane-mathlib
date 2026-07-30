import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  latticeParameters : Type u
  bravaisLattice : Type v
  basisAtoms : Type w
  symmetryGroup : Type x
  unitCellVolume : Prop
  atomicPositions : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  latticeParametersClosed : C.latticeParameters
  bravaisLatticeClosed : C.bravaisLattice
  basisAtomsClosed : C.basisAtoms
  symmetryGroupClosed : C.symmetryGroup
  unitCellVolumeClosed : C.unitCellVolume
  atomicPositionsClosed : C.atomicPositions

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.latticeParameters ∧ C.bravaisLattice ∧ C.basisAtoms ∧
  C.symmetryGroup ∧ C.unitCellVolume ∧ C.atomicPositions

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.bravaisLatticeClosed
      (And.intro E.basisAtomsClosed
        (And.intro E.symmetryGroupClosed
          (And.intro E.unitCellVolumeClosed E.atomicPositionsClosed))))

end MaterialsEngineeringCeramicsEngineeringFoundationCanonicalLaneLean
end HautevilleHouse