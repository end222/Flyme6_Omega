.class Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    .line 11966
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 11967
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11968
    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v7

    .line 11969
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v10, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 11970
    iget-object v11, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 11969
    const/4 v9, 0x0

    move-object v0, p0

    .line 11967
    invoke-direct/range {v0 .. v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 11966
    return-void
.end method

.method private cleanUp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 12035
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 12036
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    .line 12035
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12037
    .local v0, "codeFile":Ljava/io/File;
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cleaning up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12038
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 12040
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap14(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)I

    .line 12041
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12042
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 12047
    const/4 v1, 0x1

    return v1

    .line 12044
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12038
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 1

    .prologue
    .line 12051
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 8
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z

    .prologue
    .line 11974
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11975
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    .line 11974
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11975
    const-string/jumbo v2, " to "

    .line 11974
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11975
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    .line 11974
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11976
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v7

    .line 11977
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    .line 11978
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    .line 11977
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Installer;->copyCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 11979
    const/16 v0, -0x6e

    monitor-exit v7

    return v0

    :cond_1
    monitor-exit v7

    .line 11983
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    .line 11984
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    .line 11985
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get2()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "codeFile after move is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11987
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 11976
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method doPostDeleteLI(Z)Z
    .locals 1
    .param p1, "delete"    # Z

    .prologue
    .line 12055
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method doPostInstall(II)I
    .locals 1
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 12016
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 12017
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 12021
    :goto_0
    return p1

    .line 12019
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method doPreInstall(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 11991
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 11992
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 11994
    :cond_0
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 3
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 11998
    if-eq p1, v2, :cond_0

    .line 11999
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 12000
    const/4 v0, 0x0

    return v0

    .line 12004
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 12005
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 12006
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 12007
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 12008
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 12009
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 12010
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 12012
    return v2
.end method

.method getCodePath()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12026
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12031
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
