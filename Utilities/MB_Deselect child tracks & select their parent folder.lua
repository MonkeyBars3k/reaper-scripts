-- @noindex

local this_selected_child_track, target_parent_track, i, this_track, this_parent_track

reaper.Undo_BeginBlock()

this_selected_child_track = reaper.GetSelectedTrack(0, 0)
target_parent_track = reaper.GetParentTrack(this_selected_child_track)

for i = 0, reaper.GetNumTracks()-1 do
  this_track = reaper.GetTrack(0, i)
  this_parent_track = reaper.GetParentTrack(this_track)
  
  if this_parent_track == target_parent_track then
    reaper.SetTrackSelected(this_track, false)
  end
end

reaper.SetTrackSelected(target_parent_track, true)
reaper.Undo_EndBlock("MB_Deselect child tracks & select their parent folder", -1)