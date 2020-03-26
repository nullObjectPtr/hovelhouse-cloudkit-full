using System.Diagnostics;
using System.IO;
using UnityEditor;
using UnityEngine;

public class ScriptBatch
{
    [MenuItem("MyTools/Build With Postprocess")]
    public static void BuildGame()
    {
        // Get filename.
        string path = Path.Combine(Application.dataPath,  "../../Build/macOS");
        
        int sceneCount = UnityEngine.SceneManagement.SceneManager.sceneCountInBuildSettings;
        string[] scenes = new string[sceneCount];
        for (int i = 0; i < sceneCount; i++)
        {
            scenes[i] = UnityEngine.SceneManagement.SceneUtility.GetScenePathByBuildIndex(i);
        }

        // Build player.
        BuildPipeline.BuildPlayer(scenes, path + "/UnityCloudKitPlugin.app", BuildTarget.StandaloneOSX, BuildOptions.None);

        Process proc = new Process();
        proc.StartInfo.UseShellExecute = false;
        proc.StartInfo.FileName = path + "/SignForDevelopment.command";
        proc.Start();
        proc.WaitForExit();

        UnityEngine.Debug.Log("Signing finished");
        UnityEngine.Debug.Log("Launching app...");

        //Run the game(Process class from System.Diagnostics).
        proc = new Process();
        proc.StartInfo.FileName = path + "/UnityCloudKitPlugin.app";
        proc.Start();
    }
}
