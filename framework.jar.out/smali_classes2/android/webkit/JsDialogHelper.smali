.class public Landroid/webkit/JsDialogHelper;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JsDialogHelper$CancelListener;,
        Landroid/webkit/JsDialogHelper$PositiveListener;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x1

.field public static final CONFIRM:I = 0x2

.field public static final PROMPT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JsDialogHelper"

.field public static final UNLOAD:I = 0x4


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mResult:Landroid/webkit/JsPromptResult;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;
    .locals 1

    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    return-object v0
.end method

.method public constructor <init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "type"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 65
    iput-object p3, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 67
    iput p2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 68
    iput-object p5, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/webkit/JsPromptResult;Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 73
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 75
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 76
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private static canShowAlertDialog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    instance-of v0, p0, Landroid/app/Activity;

    return v0
.end method

.method private getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 167
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const v3, 0x10402c0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    :goto_0
    return-object v2

    .line 172
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "alertUrl":Ljava/net/URL;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 176
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 175
    const v4, 0x10402bf

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 177
    .end local v0    # "alertUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/net/MalformedURLException;
    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;)Z
    .locals 6
    .param p1, "client"    # Landroid/webkit/WebChromeClient;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 80
    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 84
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 86
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 88
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 95
    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->canShowAlertDialog(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    const-string/jumbo v7, "JsDialogHelper"

    const-string/jumbo v8, "Cannot create a dialog, the WebView context is not an Activity"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v7, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v7}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 98
    return-void

    .line 103
    :cond_0
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 104
    const v7, 0x10402c1

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "title":Ljava/lang/String;
    new-array v7, v11, [Ljava/lang/Object;

    .line 106
    iget-object v8, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x10402c4

    .line 105
    invoke-virtual {p1, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "displayMessage":Ljava/lang/String;
    const v4, 0x10402c2

    .line 108
    .local v4, "positiveTextId":I
    const v3, 0x10402c3

    .line 115
    .local v3, "negativeTextId":I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    new-instance v7, Landroid/webkit/JsDialogHelper$CancelListener;

    invoke-direct {v7, p0, v10}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$CancelListener;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance v7, Landroid/webkit/JsDialogHelper$PositiveListener;

    invoke-direct {v7, p0, v10}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    :goto_1
    iget v7, p0, Landroid/webkit/JsDialogHelper;->mType:I

    if-eq v7, v11, :cond_1

    .line 131
    new-instance v7, Landroid/webkit/JsDialogHelper$CancelListener;

    invoke-direct {v7, p0, v10}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$CancelListener;)V

    invoke-virtual {v0, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    return-void

    .line 110
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "displayMessage":Ljava/lang/String;
    .end local v3    # "negativeTextId":I
    .end local v4    # "positiveTextId":I
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper;->getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .restart local v5    # "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 112
    .restart local v1    # "displayMessage":Ljava/lang/String;
    const v4, 0x104000a

    .line 113
    .restart local v4    # "positiveTextId":I
    const/high16 v3, 0x1040000

    .restart local v3    # "negativeTextId":I
    goto :goto_0

    .line 122
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 123
    const v8, 0x109006d

    .line 122
    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 124
    .local v6, "view":Landroid/view/View;
    const v7, 0x102034e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 125
    .local v2, "edit":Landroid/widget/EditText;
    iget-object v7, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v7, Landroid/webkit/JsDialogHelper$PositiveListener;

    invoke-direct {v7, p0, v2}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
