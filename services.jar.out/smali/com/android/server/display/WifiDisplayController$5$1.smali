.class Lcom/android/server/display/WifiDisplayController$5$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$5;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/WifiDisplayController$5;

    .prologue
    .line 2730
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkInfoAvailable(Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;)V
    .locals 5
    .param p1, "status"    # Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;

    .prologue
    .line 2737
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2739
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get68()Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->linkInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2740
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2741
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-wrap7(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->-set44(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2742
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-wrap8(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->-set21(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2743
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-wrap8(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->-set43(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2745
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Ljava/util/regex/Matcher;)Z

    move-result v0

    .line 2747
    .local v0, "interference":Z
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$5$1;->this$1:Lcom/android/server/display/WifiDisplayController$5;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$5;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2, v0}, Lcom/android/server/display/WifiDisplayController;->-wrap59(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2732
    .end local v0    # "interference":Z
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :goto_0
    return-void

    .line 2750
    .restart local v1    # "match":Ljava/util/regex/Matcher;
    :cond_0
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v3, "wfdLinkInfoPattern Malformed Pattern, not match String "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2754
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :cond_1
    const-string/jumbo v2, "WifiDisplayController"

    const-string/jumbo v3, "onLinkInfoAvailable() parameter is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
