.class final Lcom/android/server/pm/ResmonWhitelistPackage;
.super Ljava/lang/Object;
.source "ResmonWhitelistPackage.java"


# instance fields
.field final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemDir:Ljava/io/File;

.field private final mWhitelistFile:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ResmonWhitelistPackage;->mPackages:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/"

    const-string/jumbo v2, "etc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/ResmonWhitelistPackage;->mSystemDir:Ljava/io/File;

    .line 18
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ResmonWhitelistPackage;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "resmonwhitelist.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/ResmonWhitelistPackage;->mWhitelistFile:Ljava/io/File;

    .line 16
    return-void
.end method


# virtual methods
.method readList()V
    .locals 5

    .prologue
    .line 22
    iget-object v3, p0, Lcom/android/server/pm/ResmonWhitelistPackage;->mWhitelistFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 23
    return-void

    .line 27
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ResmonWhitelistPackage;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 28
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/server/pm/ResmonWhitelistPackage;->mWhitelistFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 29
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    .line 31
    iget-object v3, p0, Lcom/android/server/pm/ResmonWhitelistPackage;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :goto_1
    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
