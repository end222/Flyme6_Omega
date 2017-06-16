.class Lcom/android/server/display/WifiDisplayController$69;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 4660
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get52(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap22(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4665
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap22(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4666
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap22(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4669
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get58(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4670
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get58(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 4669
    if-eqz v0, :cond_0

    .line 4671
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap17(Lcom/android/server/display/WifiDisplayController;)V

    .line 4673
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$69;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get58(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap22(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4662
    return-void
.end method
