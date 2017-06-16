.class Lcom/android/internal/telephony/cat/BipService$3;
.super Ljava/lang/Thread;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipService;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService$3;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService$3;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipService;->-wrap1(Lcom/android/internal/telephony/cat/BipService;)V

    .line 354
    return-void
.end method
