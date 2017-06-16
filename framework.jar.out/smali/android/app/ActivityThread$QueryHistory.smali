.class final Landroid/app/ActivityThread$QueryHistory;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHistory"
.end annotation


# instance fields
.field private mCursorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ActivityThread$QueryHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ActivityThread$QueryHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderLeakDetect:Z

.field private mUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUriPfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 5727
    iput-object p1, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5729
    const-string/jumbo v0, "ProviderLeakDetecter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 5728
    iput-boolean v0, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    .line 5733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5732
    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    .line 5734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    .line 5738
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5737
    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    .line 5739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    .line 5727
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$QueryHistory;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$QueryHistory;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private checkAeeWarningList()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5748
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 5749
    .local v6, "uid":I
    const/4 v2, 0x0

    .line 5752
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v7, "/data/system/resmon-uid.txt"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5754
    .end local v2    # "inStream":Ljava/io/InputStream;
    .local v3, "inStream":Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 5755
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 5756
    .local v4, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5758
    .local v0, "buffReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 5759
    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_2

    .line 5760
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-ne v6, v7, :cond_1

    .line 5761
    const/4 v7, 0x1

    .line 5770
    if-eqz v3, :cond_0

    .line 5772
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5761
    :cond_0
    :goto_1
    return v7

    .line 5773
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 5763
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    goto :goto_0

    .line 5770
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 5772
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5766
    :cond_3
    :goto_2
    return v8

    .line 5773
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 5767
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 5770
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v2, :cond_4

    .line 5772
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5768
    :cond_4
    :goto_4
    return v8

    .line 5773
    :catch_3
    move-exception v1

    goto :goto_4

    .line 5769
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .line 5770
    .end local v2    # "inStream":Ljava/io/InputStream;
    :goto_5
    if-eqz v2, :cond_5

    .line 5772
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 5769
    :cond_5
    :goto_6
    throw v7

    .line 5773
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 5769
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .local v2, "inStream":Ljava/io/InputStream;
    goto :goto_5

    .line 5767
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_3
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Throwable;
    .param p3, "cursorHashCode"    # I

    .prologue
    const/4 v9, 0x1

    .line 5788
    const/4 v4, 0x0

    .line 5790
    .local v4, "reportException":Z
    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    monitor-enter v6

    .line 5791
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    .line 5792
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5797
    :goto_0
    iget-boolean v5, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_0

    .line 5798
    const-string/jumbo v5, "ProviderLeakDetecter"

    .line 5799
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PossibleCursorLeak:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",QueryCounter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5798
    invoke-static {v5, v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5803
    :cond_0
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5804
    new-instance v3, Landroid/app/ActivityThread$QueryHistoryRecord;

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {v3, v5, p1, p2}, Landroid/app/ActivityThread$QueryHistoryRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5805
    .local v3, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5808
    .end local v3    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    iget-boolean v5, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v5, :cond_2

    .line 5809
    const-string/jumbo v5, "ProviderLeakDetecter"

    .line 5810
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cursor Open:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5811
    const-string/jumbo v8, " Total Opened Cursor Count:"

    .line 5810
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5811
    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    .line 5810
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5811
    const-string/jumbo v8, "."

    .line 5810
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5809
    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5815
    :cond_2
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v7, 0x46

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v7, 0x50

    if-ne v5, v7, :cond_4

    .line 5816
    :cond_3
    const-string/jumbo v5, "ProviderLeakDetecter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Total Opened Cursor Count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    invoke-virtual {p0}, Landroid/app/ActivityThread$QueryHistory;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5818
    const/4 v4, 0x1

    :cond_4
    monitor-exit v6

    .line 5823
    if-eqz v4, :cond_6

    .line 5825
    invoke-direct {p0}, Landroid/app/ActivityThread$QueryHistory;->checkAeeWarningList()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5826
    const/4 v1, 0x0

    .line 5828
    .local v1, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_1
    const-string/jumbo v5, "ro.have_aee_feature"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5829
    new-instance v2, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v2}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .local v2, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v1, v2

    .line 5831
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_5
    if-eqz v1, :cond_6

    .line 5834
    const-string/jumbo v5, "CursorLeakDetecter"

    .line 5835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Total Opened Cursor Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5836
    const-string/jumbo v7, "/data/cursorleak/traces.txt"

    .line 5833
    const/4 v8, 0x0

    .line 5832
    invoke-virtual {v1, v8, v5, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5845
    :cond_6
    :goto_1
    return v9

    .line 5794
    :cond_7
    :try_start_2
    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 5790
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 5839
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public addPfd(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Throwable;
    .param p3, "hashCode"    # I

    .prologue
    const/4 v9, 0x1

    .line 5884
    const/4 v4, 0x0

    .line 5886
    .local v4, "reportException":Z
    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    monitor-enter v6

    .line 5887
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 5888
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5893
    :goto_0
    iget-boolean v5, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_0

    .line 5894
    const-string/jumbo v5, "ProviderLeakDetecter"

    .line 5895
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Possible PFD Leak:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",QueryCounter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5894
    invoke-static {v5, v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5899
    :cond_0
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5900
    new-instance v3, Landroid/app/ActivityThread$QueryHistoryRecord;

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {v3, v5, p1, p2}, Landroid/app/ActivityThread$QueryHistoryRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5901
    .local v3, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5904
    .end local v3    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    iget-boolean v5, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v5, :cond_2

    .line 5905
    const-string/jumbo v5, "ProviderLeakDetecter"

    .line 5906
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PFD Open:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5907
    const-string/jumbo v8, " Total Opened PFD Count:"

    .line 5906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5907
    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    .line 5906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5907
    const-string/jumbo v8, "."

    .line 5906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5905
    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5911
    :cond_2
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v7, 0xfa

    if-ne v5, v7, :cond_3

    .line 5912
    const-string/jumbo v5, "ProviderLeakDetecter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Total Opened PFD Count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5913
    invoke-virtual {p0}, Landroid/app/ActivityThread$QueryHistory;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5914
    const/4 v4, 0x1

    :cond_3
    monitor-exit v6

    .line 5919
    if-eqz v4, :cond_5

    .line 5921
    invoke-direct {p0}, Landroid/app/ActivityThread$QueryHistory;->checkAeeWarningList()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5922
    const/4 v1, 0x0

    .line 5924
    .local v1, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_1
    const-string/jumbo v5, "ro.have_aee_feature"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5925
    new-instance v2, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v2}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .local v2, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v1, v2

    .line 5927
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_4
    if-eqz v1, :cond_5

    .line 5930
    const-string/jumbo v5, "PFDLeakDetecter"

    .line 5931
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Total Opened PFD Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5932
    const-string/jumbo v7, "/data/cursorleak/traces.txt"

    .line 5929
    const/4 v8, 0x0

    .line 5928
    invoke-virtual {v1, v8, v5, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5940
    :cond_5
    :goto_1
    return v9

    .line 5890
    :cond_6
    :try_start_2
    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 5886
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 5934
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 5976
    const-string/jumbo v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total Opened Cursor Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5977
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5978
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5979
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5980
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5981
    .local v2, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    const-string/jumbo v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CursorQueryHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5985
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_0
    const-string/jumbo v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total Opened PFD Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5986
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5987
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5988
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5989
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5990
    .restart local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    const-string/jumbo v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PFDQueryHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5974
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 6
    .param p1, "cursorHashCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 5854
    iget-object v2, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    monitor-enter v2

    .line 5855
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5856
    .local v0, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5857
    :cond_0
    const-string/jumbo v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad request for cursor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 5858
    return-void

    .line 5859
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 5860
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5861
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5867
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v1, :cond_3

    .line 5868
    const-string/jumbo v1, "ProviderLeakDetecter"

    .line 5869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cursor Close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5870
    const-string/jumbo v4, " Total Opened Cursor Count:"

    .line 5869
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5870
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 5869
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5870
    const-string/jumbo v4, "."

    .line 5869
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5868
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    .line 5853
    return-void

    .line 5862
    :cond_4
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 5863
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5864
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5854
    .end local v0    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removePfd(I)V
    .locals 6
    .param p1, "hashCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 5949
    iget-object v2, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    monitor-enter v2

    .line 5950
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5951
    .local v0, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5952
    :cond_0
    const-string/jumbo v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad request for pfd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 5953
    return-void

    .line 5954
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 5955
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5956
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5962
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v1, :cond_3

    .line 5963
    const-string/jumbo v1, "ProviderLeakDetecter"

    .line 5964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PFD Close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5965
    const-string/jumbo v4, " Total Opened PFD Count:"

    .line 5964
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5965
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 5964
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5965
    const-string/jumbo v4, "."

    .line 5964
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5963
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    .line 5948
    return-void

    .line 5957
    :cond_4
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 5958
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5959
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5949
    .end local v0    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
