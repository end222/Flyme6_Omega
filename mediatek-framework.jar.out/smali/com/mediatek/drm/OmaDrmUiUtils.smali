.class public Lcom/mediatek/drm/OmaDrmUiUtils;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;,
        Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    }
.end annotation


# static fields
.field private static final OMA_DRM_FL_ONLY:Z

.field private static final TAG:Ljava/lang/String; = "OmaDrmUiUtils"

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/mediatek/drm/OmaDrmUiUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/drm/OmaDrmUiUtils;->sLock:Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "drm.forwardlock.only"

    const-string/jumbo v2, "no"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "drmFLOnly":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 73
    :goto_0
    sput-boolean v1, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    .line 65
    return-void

    .line 74
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    const-string/jumbo v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkCustomAlertDialog : check existing dialog @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    sget-object v3, Lcom/mediatek/drm/OmaDrmUiUtils;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1150
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1151
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    .line 1153
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const-string/jumbo v2, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkCustomAlertDialog : existing dialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1155
    const-string/jumbo v2, "OmaDrmUiUtils"

    const-string/jumbo v4, "checkCustomAlertDialog : context match, dismiss it"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1157
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    :cond_1
    monitor-exit v3

    .line 1145
    return-void

    .line 1149
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bgdBmpId"    # I
    .param p3, "frontId"    # I

    .prologue
    .line 191
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 193
    .local v2, "front":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0, v2}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    .end local v0    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 195
    .restart local v0    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    const/4 v0, 0x0

    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "bgdBmp"    # Landroid/graphics/Bitmap;
    .param p2, "front"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 157
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    const-string/jumbo v7, "OmaDrmUiUtils"

    const-string/jumbo v8, "overlayBitmap : invalid parameters"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-object v10

    .line 157
    :cond_1
    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    .line 162
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, "bMutable":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    .local v3, "overlayCanvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 168
    invoke-virtual {v3, p1, v11, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 171
    .local v5, "overlayWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 172
    .local v4, "overlayHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v1, v7, v5

    .line 173
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v6, v7, v4

    .line 174
    .local v6, "top":I
    new-instance v2, Landroid/graphics/Rect;

    add-int v7, v1, v5

    add-int v8, v6, v4

    invoke-direct {v2, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 175
    .local v2, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 176
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    return-object v0
.end method

.method public static overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bgdBmpId"    # I
    .param p3, "frontId"    # I

    .prologue
    .line 135
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 137
    .local v2, "front":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0, v2}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 138
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    .end local v0    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 139
    .restart local v0    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    const/4 v0, 0x0

    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "bgdBmp"    # Landroid/graphics/Bitmap;
    .param p2, "front"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 89
    :cond_0
    const-string/jumbo v12, "OmaDrmUiUtils"

    const-string/jumbo v13, "overlayBitmapSkew : invalid parameters"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v12, 0x0

    return-object v12

    .line 88
    :cond_1
    if-eqz p0, :cond_0

    .line 94
    const/4 v7, 0x0

    .line 95
    .local v7, "offset":I
    invoke-virtual {p0}, Lcom/mediatek/drm/OmaDrmClient;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 96
    .local v2, "context":Landroid/content/Context;
    instance-of v12, v2, Landroid/app/Activity;

    if-eqz v12, :cond_3

    .line 97
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .local v5, "metric":Landroid/util/DisplayMetrics;
    check-cast v2, Landroid/app/Activity;

    .end local v2    # "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    iget v3, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 100
    .local v3, "densityDpi":I
    const/16 v12, 0x3c0

    div-int v7, v12, v3

    .line 105
    .end local v3    # "densityDpi":I
    .end local v5    # "metric":Landroid/util/DisplayMetrics;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v12, v7

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    .line 105
    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, "bMutable":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v8, "overlayCanvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 111
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 114
    .local v10, "overlayWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 115
    .local v9, "overlayHeight":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int v4, v12, v10

    .line 116
    .local v4, "left":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int v11, v12, v9

    .line 117
    .local v11, "top":I
    new-instance v6, Landroid/graphics/Rect;

    add-int v12, v4, v10

    add-int v13, v11, v9

    invoke-direct {v6, v4, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    .local v6, "newBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 119
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    return-object v1

    .line 102
    .end local v1    # "bMutable":Landroid/graphics/Bitmap;
    .end local v4    # "left":I
    .end local v6    # "newBounds":Landroid/graphics/Rect;
    .end local v8    # "overlayCanvas":Landroid/graphics/Canvas;
    .end local v9    # "overlayHeight":I
    .end local v10    # "overlayWidth":I
    .end local v11    # "top":I
    .restart local v2    # "context":Landroid/content/Context;
    :cond_3
    const-string/jumbo v12, "OmaDrmUiUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "overlayBitmapSkew : not in Activity context @"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "bgdBmpId"    # I

    .prologue
    .line 300
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 302
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    .end local v0    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 303
    .restart local v0    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    const/4 v0, 0x0

    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "bgdBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 268
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 269
    .local v2, "method":I
    if-nez v2, :cond_0

    .line 270
    const-string/jumbo v4, "OmaDrmUiUtils"

    const-string/jumbo v5, "overlayDrmIcon : not drm type, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object p4

    .line 273
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 274
    const-string/jumbo v4, "OmaDrmUiUtils"

    const-string/jumbo v5, "overlayDrmIcon : method FL, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object p4

    .line 278
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 279
    .local v3, "rightsStatus":I
    if-nez v3, :cond_2

    .line 280
    const v1, 0x8020049

    .line 283
    .local v1, "lockId":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 284
    .local v0, "front":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p4, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 281
    .end local v0    # "front":Landroid/graphics/drawable/Drawable;
    .end local v1    # "lockId":I
    :cond_2
    const v1, 0x802004a

    .restart local v1    # "lockId":I
    goto :goto_0
.end method

.method public static overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "bgdBmpId"    # I

    .prologue
    .line 246
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 248
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    .end local v0    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 249
    .restart local v0    # "bgdBmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    const/4 v0, 0x0

    .local v0, "bgdBmp":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "bgdBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 214
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 215
    .local v2, "method":I
    if-nez v2, :cond_0

    .line 216
    const-string/jumbo v4, "OmaDrmUiUtils"

    const-string/jumbo v5, "overlayDrmIconSkew : not drm type, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object p4

    .line 219
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 220
    const-string/jumbo v4, "OmaDrmUiUtils"

    const-string/jumbo v5, "overlayDrmIconSkew : method FL, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object p4

    .line 224
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 225
    .local v3, "rightsStatus":I
    if-nez v3, :cond_2

    .line 226
    const v1, 0x8020049

    .line 229
    .local v1, "lockId":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    .local v0, "front":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p4, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 227
    .end local v0    # "front":Landroid/graphics/drawable/Drawable;
    .end local v1    # "lockId":I
    :cond_2
    const v1, 0x802004a

    .restart local v1    # "lockId":I
    goto :goto_0
.end method

.method public static showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v6, 0x0

    .line 386
    const-string/jumbo v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showConsumeDialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 389
    const-string/jumbo v3, "OmaDrmUiUtils"

    const-string/jumbo v4, "showConsumeDialog : not an Acitivty context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v6

    .line 393
    :cond_0
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 394
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 395
    .local v2, "result":Landroid/app/Dialog;
    if-eqz v2, :cond_1

    .line 396
    return-object v2

    .line 399
    :cond_1
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 400
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 402
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 401
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 405
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 404
    const/4 v4, -0x2

    invoke-virtual {v0, v4, v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 407
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 408
    const v3, 0x805005b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 409
    const v3, 0x805005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v0, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 411
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    .line 413
    return-object v0
.end method

.method public static showConsumeRightsDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    .line 823
    const-string/jumbo v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showConsumeRights @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 826
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 827
    .local v2, "result":Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 828
    return-object v2

    .line 831
    :cond_0
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 832
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 835
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 836
    new-instance v4, Lcom/mediatek/drm/OmaDrmUiUtils$5;

    invoke-direct {v4, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$5;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    .line 834
    const/4 v5, -0x1

    invoke-virtual {v0, v5, v3, v4}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 847
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 848
    new-instance v4, Lcom/mediatek/drm/OmaDrmUiUtils$6;

    invoke-direct {v4, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$6;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    .line 846
    const/4 v5, -0x2

    invoke-virtual {v0, v5, v3, v4}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 857
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 858
    const v3, 0x805005b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 859
    const v3, 0x805005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 862
    new-instance v3, Lcom/mediatek/drm/OmaDrmUiUtils$7;

    invoke-direct {v3, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$7;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    .line 861
    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 871
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    .line 873
    return-object v0
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 425
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_1

    .line 426
    :cond_0
    const-string/jumbo v2, "OmaDrmUiUtils"

    const-string/jumbo v3, "showProtectionInfoDialog : Given uri is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-object v5

    .line 430
    :cond_1
    const/4 v1, 0x0

    .line 432
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 437
    .local v1, "path":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 433
    .local v1, "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException @showProtectionInfoDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v5
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 36
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string/jumbo v31, "OmaDrmUiUtils"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "showProtectionInfoDialog : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " @"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eqz p1, :cond_0

    const-string/jumbo v31, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 452
    :cond_0
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : Given path is not valid"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/16 v31, 0x0

    return-object v31

    .line 456
    :cond_1
    sget-object v31, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v21

    .line 457
    .local v21, "result":Landroid/app/Dialog;
    if-eqz v21, :cond_2

    .line 458
    return-object v21

    .line 463
    :cond_2
    const v31, 0x8070013

    const/16 v32, 0x0

    .line 462
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 466
    .local v25, "scrollView":Landroid/view/View;
    const v31, 0x8110051

    .line 465
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 467
    .local v15, "fileNameView":Landroid/widget/TextView;
    if-nez v15, :cond_3

    .line 468
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : the TextView: fileNameView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v31, 0x0

    return-object v31

    .line 472
    :cond_3
    const-string/jumbo v31, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 473
    .local v26, "start":I
    const-string/jumbo v31, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 474
    .local v10, "end":I
    add-int/lit8 v31, v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 475
    .local v14, "fileNameStr":Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    const v31, 0x8110052

    .line 478
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 480
    .local v18, "protectionInfoStatusView":Landroid/widget/TextView;
    if-nez v18, :cond_4

    .line 481
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : the TextView: protectionInfoStatusView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/16 v31, 0x0

    return-object v31

    .line 485
    :cond_4
    new-instance v7, Lcom/mediatek/drm/OmaDrmClient;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 486
    .local v7, "client":Lcom/mediatek/drm/OmaDrmClient;
    const/16 v31, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v24

    .line 487
    .local v24, "rightsStatus":I
    if-nez v24, :cond_5

    .line 488
    const v6, 0x805003f

    .line 490
    .local v6, "canForward":I
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 494
    const v31, 0x8110053

    .line 493
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 495
    .local v5, "beginView":Landroid/widget/TextView;
    if-nez v5, :cond_6

    .line 496
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : the TextView: beginView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/16 v31, 0x0

    return-object v31

    .line 489
    .end local v5    # "beginView":Landroid/widget/TextView;
    .end local v6    # "canForward":I
    :cond_5
    const v6, 0x8050040

    .restart local v6    # "canForward":I
    goto :goto_0

    .line 501
    .restart local v5    # "beginView":Landroid/widget/TextView;
    :cond_6
    const v31, 0x8110055

    .line 500
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 502
    .local v13, "endView":Landroid/widget/TextView;
    if-nez v13, :cond_7

    .line 503
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : the TextView: endView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/16 v31, 0x0

    return-object v31

    .line 508
    :cond_7
    const v31, 0x8110057

    .line 507
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 509
    .local v29, "useLeftView":Landroid/widget/TextView;
    if-nez v29, :cond_8

    .line 510
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : the TextView: useLeftView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 v31, 0x0

    return-object v31

    .line 515
    :cond_8
    const v31, 0x8110054

    .line 514
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 516
    .local v4, "beginValueView":Landroid/widget/TextView;
    if-nez v4, :cond_9

    .line 517
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : the TextView: beginValueView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v31, 0x0

    return-object v31

    .line 522
    :cond_9
    const v31, 0x8110056

    .line 521
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 523
    .local v12, "endValueView":Landroid/widget/TextView;
    if-nez v12, :cond_a

    .line 524
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : the TextView: endValueView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/16 v31, 0x0

    return-object v31

    .line 529
    :cond_a
    const v31, 0x8110058

    .line 528
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 530
    .local v28, "useLeftValueView":Landroid/widget/TextView;
    if-nez v28, :cond_b

    .line 531
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : the TextView: useLeftValueView is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/16 v31, 0x0

    return-object v31

    .line 535
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/mediatek/drm/OmaDrmClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 536
    .local v17, "mime":Ljava/lang/String;
    if-nez v17, :cond_c

    .line 537
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : failed to get the original mime type"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/16 v31, 0x0

    return-object v31

    .line 542
    :cond_c
    new-instance v9, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v31, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 543
    .local v9, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 545
    .local v20, "res":Landroid/content/res/Resources;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/drm/OmaDrmUtils;->getMediaActionType(Ljava/lang/String;)I

    move-result v31

    .line 544
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v30

    .line 546
    .local v30, "values":Landroid/content/ContentValues;
    if-eqz v30, :cond_d

    invoke-virtual/range {v30 .. v30}, Landroid/content/ContentValues;->size()I

    move-result v31

    if-nez v31, :cond_11

    .line 547
    :cond_d
    const v31, 0x8050042

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 548
    const-string/jumbo v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    const-string/jumbo v31, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    .line 552
    .local v8, "cv":Landroid/content/ContentValues;
    const/16 v22, 0x0

    .line 553
    .local v22, "rightsIssuer":Ljava/lang/String;
    if-eqz v8, :cond_e

    const-string/jumbo v31, "drm_rights_issuer"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 554
    const-string/jumbo v31, "drm_rights_issuer"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 558
    .end local v22    # "rightsIssuer":Ljava/lang/String;
    :cond_e
    move-object/from16 v23, v22

    .line 559
    .local v23, "rightsIssuerFinal":Ljava/lang/String;
    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_10

    .line 635
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v23    # "rightsIssuerFinal":Ljava/lang/String;
    :cond_f
    :goto_1
    const v31, 0x104000a

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 636
    new-instance v32, Lcom/mediatek/drm/OmaDrmUiUtils$2;

    invoke-direct/range {v32 .. v32}, Lcom/mediatek/drm/OmaDrmUiUtils$2;-><init>()V

    .line 634
    const/16 v33, -0x3

    move/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v9, v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 642
    const v31, 0x8050062

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 643
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setView(Landroid/view/View;)V

    .line 644
    invoke-virtual {v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    .line 646
    return-object v9

    .line 561
    .restart local v8    # "cv":Landroid/content/ContentValues;
    .restart local v23    # "rightsIssuerFinal":Ljava/lang/String;
    :cond_10
    const v31, 0x8050048

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 562
    new-instance v32, Lcom/mediatek/drm/OmaDrmUiUtils$1;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 560
    const/16 v33, -0x1

    move/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v9, v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 573
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v23    # "rightsIssuerFinal":Ljava/lang/String;
    :cond_11
    const-string/jumbo v31, "license_start_time"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 575
    const-string/jumbo v31, "license_start_time"

    .line 574
    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 576
    .local v27, "startL":Ljava/lang/Long;
    if-nez v27, :cond_12

    .line 577
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : startL is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v31, 0x0

    return-object v31

    .line 580
    :cond_12
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-nez v31, :cond_13

    .line 582
    const v31, 0x8050041

    .line 581
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 590
    .end local v27    # "startL":Ljava/lang/Long;
    :goto_2
    const-string/jumbo v31, "license_expiry_time"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 592
    const-string/jumbo v31, "license_expiry_time"

    .line 591
    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 593
    .local v11, "endL":Ljava/lang/Long;
    if-nez v11, :cond_15

    .line 594
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : endL is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/16 v31, 0x0

    return-object v31

    .line 584
    .end local v11    # "endL":Ljava/lang/Long;
    .restart local v27    # "startL":Ljava/lang/Long;
    :cond_13
    invoke-static/range {v27 .. v27}, Lcom/mediatek/drm/OmaDrmUiUtils;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 587
    .end local v27    # "startL":Ljava/lang/Long;
    :cond_14
    const v31, 0x8050041

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 597
    .restart local v11    # "endL":Ljava/lang/Long;
    :cond_15
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-nez v31, :cond_16

    .line 599
    const v31, 0x8050041

    .line 598
    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 607
    .end local v11    # "endL":Ljava/lang/Long;
    :goto_3
    const-string/jumbo v31, "remaining_repeat_count"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 608
    const-string/jumbo v31, "max_repeat_count"

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    .line 607
    if-eqz v31, :cond_1c

    .line 610
    const-string/jumbo v31, "remaining_repeat_count"

    .line 609
    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    .line 611
    .local v19, "remainCount":Ljava/lang/Long;
    if-nez v19, :cond_18

    .line 612
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog : remainCount is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/16 v31, 0x0

    return-object v31

    .line 601
    .end local v19    # "remainCount":Ljava/lang/Long;
    .restart local v11    # "endL":Ljava/lang/Long;
    :cond_16
    invoke-static {v11}, Lcom/mediatek/drm/OmaDrmUiUtils;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 604
    .end local v11    # "endL":Ljava/lang/Long;
    :cond_17
    const v31, 0x8050041

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 616
    .restart local v19    # "remainCount":Ljava/lang/Long;
    :cond_18
    const-string/jumbo v31, "max_repeat_count"

    .line 615
    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 617
    .local v16, "maxCount":Ljava/lang/Long;
    if-nez v16, :cond_19

    .line 618
    const-string/jumbo v31, "OmaDrmUiUtils"

    const-string/jumbo v32, "showProtectionInfoDialog() : maxCount is null"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/16 v31, 0x0

    return-object v31

    .line 621
    :cond_19
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-eqz v31, :cond_1a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-nez v31, :cond_1b

    .line 623
    :cond_1a
    const v31, 0x8050041

    .line 622
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 626
    :cond_1b
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 625
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 629
    .end local v16    # "maxCount":Ljava/lang/Long;
    .end local v19    # "remainCount":Ljava/lang/Long;
    :cond_1c
    const v31, 0x8050041

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 1
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 799
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v5, 0x0

    .line 661
    const-string/jumbo v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showRefreshLicenseDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    sget-boolean v2, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v2, :cond_0

    .line 664
    const-string/jumbo v2, "OmaDrmUiUtils"

    const-string/jumbo v3, "showRefreshLicenseDialog : Forward-lock-only is set."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-object v5

    .line 667
    :cond_0
    if-eqz p2, :cond_1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p2, :cond_2

    .line 668
    :cond_1
    const-string/jumbo v2, "OmaDrmUiUtils"

    const-string/jumbo v3, "showRefreshLicenseDialog : Given uri is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-object v5

    .line 671
    :cond_2
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 672
    const-string/jumbo v2, "OmaDrmUiUtils"

    const-string/jumbo v3, "showRefreshLicenseDialog : not an Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return-object v5

    .line 676
    :cond_3
    const/4 v1, 0x0

    .line 678
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 683
    .local v1, "path":Ljava/lang/String;
    invoke-static {p0, p1, v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 679
    .local v1, "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException @showRefreshLicenseDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-object v5
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 12
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 699
    const-string/jumbo v9, "OmaDrmUiUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showRefreshLicenseDialog : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    sget-boolean v9, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v9, :cond_0

    .line 702
    const-string/jumbo v9, "OmaDrmUiUtils"

    const-string/jumbo v10, "showRefreshLicenseDialog : Forward-lock-only is set."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v9, 0x0

    return-object v9

    .line 705
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 706
    :cond_1
    const-string/jumbo v9, "OmaDrmUiUtils"

    const-string/jumbo v10, "showRefreshLicenseDialog : Given path is not valid"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v9, 0x0

    return-object v9

    .line 709
    :cond_2
    instance-of v9, p1, Landroid/app/Activity;

    if-nez v9, :cond_3

    .line 710
    const-string/jumbo v9, "OmaDrmUiUtils"

    const-string/jumbo v10, "showRefreshLicenseDialog : not an Activity context"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v9, 0x0

    return-object v9

    .line 714
    :cond_3
    sget-object v9, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v9, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 715
    sget-object v9, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v9, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v6

    .line 716
    .local v6, "result":Landroid/app/Dialog;
    if-eqz v6, :cond_4

    .line 717
    return-object v6

    .line 721
    :cond_4
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 722
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 724
    .local v7, "rightsIssuer":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string/jumbo v9, "drm_rights_issuer"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 725
    const-string/jumbo v9, "drm_rights_issuer"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 729
    .end local v7    # "rightsIssuer":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_7

    const-string/jumbo v9, "drm_method"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 730
    const/4 v4, 0x0

    .line 731
    .local v4, "method":I
    const-string/jumbo v9, "drm_method"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 732
    .local v2, "m":Ljava/lang/Integer;
    if-eqz v2, :cond_6

    .line 733
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 735
    :cond_6
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    .line 736
    const-string/jumbo v9, "OmaDrmUiUtils"

    const-string/jumbo v10, "showRefreshLicenseDialog: FL file, not show licese expired"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v9, 0x0

    return-object v9

    .line 742
    .end local v2    # "m":Ljava/lang/Integer;
    .end local v4    # "method":I
    :cond_7
    if-eqz v7, :cond_8

    const-string/jumbo v9, "http"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 753
    .local v5, "res":Landroid/content/res/Resources;
    const v9, 0x805004a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 752
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 754
    const/4 v11, 0x0

    aput-object p2, v10, v11

    .line 752
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "message":Ljava/lang/String;
    move-object v8, v7

    .line 757
    .local v8, "rightsIssuerFinal":Ljava/lang/String;
    new-instance v1, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v9, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 760
    .local v1, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const v9, 0x8050048

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 761
    new-instance v10, Lcom/mediatek/drm/OmaDrmUiUtils$3;

    invoke-direct {v10, v8, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 759
    const/4 v11, -0x1

    invoke-virtual {v1, v11, v9, v10}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 772
    const/high16 v9, 0x1040000

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 773
    new-instance v10, Lcom/mediatek/drm/OmaDrmUiUtils$4;

    invoke-direct {v10}, Lcom/mediatek/drm/OmaDrmUiUtils$4;-><init>()V

    .line 771
    const/4 v11, -0x2

    invoke-virtual {v1, v11, v9, v10}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 779
    const v9, 0x108009b

    invoke-virtual {v1, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 780
    const v9, 0x8050049

    invoke-virtual {v1, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 781
    invoke-virtual {v1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 782
    invoke-virtual {v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 783
    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    .line 785
    return-object v1

    .line 744
    .end local v1    # "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v8    # "rightsIssuerFinal":Ljava/lang/String;
    :cond_8
    const v9, 0x805004b

    .line 745
    const/4 v10, 0x1

    .line 743
    invoke-static {p1, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 746
    const/4 v9, 0x0

    return-object v9
.end method

.method public static showRefreshLicenseDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    const/4 v5, 0x0

    .line 927
    sget-boolean v2, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v2, :cond_0

    .line 928
    const-string/jumbo v2, "OmaDrmUiUtils"

    const-string/jumbo v3, "showRefreshLicense : Forward-lock-only is set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-object v5

    .line 931
    :cond_0
    if-eqz p2, :cond_1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p2, :cond_2

    .line 932
    :cond_1
    const-string/jumbo v2, "OmaDrmUiUtils"

    const-string/jumbo v3, "showRefreshLicense : invalid uri"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-object v5

    .line 935
    :cond_2
    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 940
    const/4 v1, 0x0

    .line 942
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 947
    .local v1, "path":Ljava/lang/String;
    invoke-static {p0, p1, v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 936
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "OmaDrmUiUtils"

    const-string/jumbo v3, "showRefreshLicense : invalid context or not an Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-object v5

    .line 943
    .local v1, "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumenException @showRefreshLicense : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-object v5
.end method

.method public static showRefreshLicenseDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 12
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 957
    const-string/jumbo v7, "OmaDrmUiUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showRefreshLicense @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    sget-boolean v7, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v7, :cond_0

    .line 960
    const-string/jumbo v7, "OmaDrmUiUtils"

    const-string/jumbo v8, "showRefreshLicense : Forward-lock-only is set"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-object v10

    .line 963
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 964
    :cond_1
    const-string/jumbo v7, "OmaDrmUiUtils"

    const-string/jumbo v8, "showRefreshLicense : invalid path"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-object v10

    .line 967
    :cond_2
    if-eqz p1, :cond_3

    instance-of v7, p1, Landroid/app/Activity;

    if-eqz v7, :cond_3

    .line 972
    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 973
    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    .line 974
    .local v4, "result":Landroid/app/Dialog;
    if-eqz v4, :cond_4

    .line 975
    return-object v4

    .line 968
    .end local v4    # "result":Landroid/app/Dialog;
    :cond_3
    const-string/jumbo v7, "OmaDrmUiUtils"

    const-string/jumbo v8, "showRefreshLicense : invalid context or not an Activity context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-object v10

    .line 979
    .restart local v4    # "result":Landroid/app/Dialog;
    :cond_4
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 980
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 981
    .local v5, "rightsIssuer":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string/jumbo v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 982
    const-string/jumbo v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 986
    .end local v5    # "rightsIssuer":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    const-string/jumbo v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 997
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1000
    .local v3, "res":Landroid/content/res/Resources;
    const v7, 0x805004a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 999
    new-array v8, v11, [Ljava/lang/Object;

    .line 1001
    const/4 v9, 0x0

    aput-object p2, v8, v9

    .line 999
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1002
    .local v2, "message":Ljava/lang/String;
    move-object v6, v5

    .line 1004
    .local v6, "rightsIssuerFinal":Ljava/lang/String;
    new-instance v1, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1007
    .local v1, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const v7, 0x8050048

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1008
    new-instance v8, Lcom/mediatek/drm/OmaDrmUiUtils$10;

    invoke-direct {v8, v6, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$10;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1006
    const/4 v9, -0x1

    invoke-virtual {v1, v9, v7, v8}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1019
    const/high16 v7, 0x1040000

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1020
    new-instance v8, Lcom/mediatek/drm/OmaDrmUiUtils$11;

    invoke-direct {v8}, Lcom/mediatek/drm/OmaDrmUiUtils$11;-><init>()V

    .line 1018
    const/4 v9, -0x2

    invoke-virtual {v1, v9, v7, v8}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1026
    const v7, 0x108009b

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 1027
    const v7, 0x8050049

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 1028
    invoke-virtual {v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1031
    new-instance v7, Lcom/mediatek/drm/OmaDrmUiUtils$12;

    invoke-direct {v7, p3}, Lcom/mediatek/drm/OmaDrmUiUtils$12;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    .line 1030
    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1040
    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    .line 1042
    return-object v1

    .line 988
    .end local v1    # "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v6    # "rightsIssuerFinal":Ljava/lang/String;
    :cond_6
    const v7, 0x805004b

    .line 987
    invoke-static {p1, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 990
    if-eqz p3, :cond_7

    .line 991
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;->onOperated(I)V

    .line 993
    :cond_7
    return-object v10
.end method

.method public static showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v6, 0x0

    .line 347
    const-string/jumbo v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSecureTimerInvalidDialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 350
    const-string/jumbo v3, "OmaDrmUiUtils"

    const-string/jumbo v4, "showSecureTimerInvalidDialog : not an Acitivty context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-object v6

    .line 354
    :cond_0
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 355
    .local v2, "result":Landroid/app/Dialog;
    if-eqz v2, :cond_1

    .line 356
    return-object v2

    .line 359
    :cond_1
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 360
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 362
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 361
    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 364
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 365
    const v3, 0x8050052

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 366
    const v3, 0x8050056

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {v0, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 368
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    .line 370
    return-object v0
.end method

.method public static showSecureTimerInvalidDialogForVideoPlayer(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    .prologue
    .line 883
    const-string/jumbo v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSecureTimerInvalid @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 886
    .local v2, "result":Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 887
    return-object v2

    .line 890
    :cond_0
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 891
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 894
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 895
    new-instance v4, Lcom/mediatek/drm/OmaDrmUiUtils$8;

    invoke-direct {v4}, Lcom/mediatek/drm/OmaDrmUiUtils$8;-><init>()V

    .line 893
    const/4 v5, -0x1

    invoke-virtual {v0, v5, v3, v4}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 901
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 902
    const v3, 0x8050052

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 903
    const v3, 0x8050056

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 906
    new-instance v3, Lcom/mediatek/drm/OmaDrmUiUtils$9;

    invoke-direct {v3, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$9;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    .line 905
    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 915
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    .line 917
    return-object v0
.end method

.method private static toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8
    .param p0, "sec"    # Ljava/lang/Long;

    .prologue
    .line 1052
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1053
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1054
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method private static validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 1126
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    const-string/jumbo v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateCustomAlertDialog : validate existing dialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v2, 0x0

    .line 1130
    .local v2, "result":Landroid/app/Dialog;
    sget-object v4, Lcom/mediatek/drm/OmaDrmUiUtils;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1131
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1132
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    .line 1134
    .local v0, "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const-string/jumbo v3, "OmaDrmUiUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateCustomAlertDialog : existing dialog @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1136
    const-string/jumbo v3, "OmaDrmUiUtils"

    const-string/jumbo v5, "validateCustomAlertDialog : context match, use this one"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    move-object v2, v0

    .end local v0    # "dialog":Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    .end local v2    # "result":Landroid/app/Dialog;
    :cond_1
    monitor-exit v4

    .line 1142
    return-object v2

    .line 1130
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    .restart local v2    # "result":Landroid/app/Dialog;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
