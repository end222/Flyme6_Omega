.class Landroid/widget/ActivityChooserView$4;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserView;
    .param p2, "$anonymous0"    # Landroid/view/View;

    .prologue
    .line 299
    iput-object p1, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-wrap0(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->showPopup()Z

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 314
    const/4 v0, 0x1

    return v0
.end method
