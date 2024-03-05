using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dtm.Framework.ClientSites;

namespace ASH.Models
{
    public class MediaPlayer
    {
        public readonly List<string> VideoLabels;
        public readonly List<string> VideoIds;
        public readonly List<Video> VideoList;

        public MediaPlayer ()
        {
            VideoLabels = SetVideoLabels();
            VideoIds = SetVideoIds();
            VideoList = SetVideoList();
        }

        public bool HasVideo (Video video)
        {
            return !string.IsNullOrEmpty(video.Id);
        }

        public bool HasSingleVideo ()
        {
            return VideoList.Count() > 0;
        }

        public bool HasMultipleVideos ()
        {
            return VideoList.Count() > 1;
        }

        public Video GetVideoById (int id)
        {
            return VideoList.ElementAtOrDefault(id) ?? new Video();
        }

        public bool HasDuplicateVideos ()
        {
            var duplicateVideoIds = GetDuplicateVideos();

            return duplicateVideoIds.Any();
        }

        public List<string> GetDuplicateVideos ()
        {
            return VideoIds.GroupBy(x => x)
                .Where(group => group.Count() > 1)
                .Select(group => group.Key).ToList();
        }

        private List<string> ConvertStringToList (string entries)
        {
            return entries
                .Split(new []{ "|" }, StringSplitOptions.RemoveEmptyEntries)
                .Select(s => s.Trim()).ToList();
        }

        private List<Video> CombineListsToVideoList (List<string> firstList, List<string> secondList)
        {
            return secondList.Zip(firstList, (k, v) => new Video() { Id = k, Label = v }).ToList();
        }

        private List<Video> SetVideoList ()
        {
            return CombineListsToVideoList(VideoLabels, VideoIds);
        }

        private List<string> SetVideoLabels ()
        {
            var videoLabels = SettingsManager.ContextSettings["FrameworkJS/CSS.Eflex.Play.Labels", string.Empty];

            return ConvertStringToList(videoLabels);
        }

        private List<string> SetVideoIds ()
        {
            var videoIds = SettingsManager.ContextSettings["FrameworkJS/CSS.Eflex.Play.Source", string.Empty];

            return ConvertStringToList(videoIds);
        }
    }

    public class Video
    {
        public string Id { get; set; }
        public string Label { get; set; }

        public Video ()
        {
            Id = string.Empty;
            Label = string.Empty;
        }
    }
}