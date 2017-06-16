.class public Lcom/mediatek/dcfdecoder/DcfDecoder;
.super Ljava/lang/Object;
.source "DcfDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DRM/DcfDecoder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "dcfdecoderjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 15
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 215
    const/4 v9, 0x0

    .line 217
    .local v9, "filepath":Ljava/lang/String;
    const-string/jumbo v1, "DRM/DcfDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFilepathFromUri: uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-nez p1, :cond_0

    .line 220
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "getFilepathFromUri: find null ContentResolver!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x0

    return-object v1

    .line 223
    :cond_0
    if-nez p2, :cond_1

    .line 224
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "getFilepathFromUri: find null uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 229
    .local v14, "uriStr":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 230
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "getFilepathFromUri: convert Uri object to String failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x0

    return-object v1

    .line 233
    :cond_2
    const-string/jumbo v1, "content://"

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 235
    const/4 v7, 0x0

    .line 237
    .local v7, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 238
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 239
    const-string/jumbo v1, "DRM/DcfDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFilepathFromUri: no cursor returned for Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    const/4 v1, 0x0

    .line 264
    if-eqz v7, :cond_3

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_3
    return-object v1

    .line 242
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_6

    .line 243
    const-string/jumbo v1, "DRM/DcfDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFilepathFromUri: record number in returned cursor is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    const/4 v1, 0x0

    .line 264
    if-eqz v7, :cond_5

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_5
    return-object v1

    .line 246
    :cond_6
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 247
    const-string/jumbo v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 248
    .local v8, "columnIndex":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_7

    .line 249
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 264
    .end local v9    # "filepath":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_8

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "columnIndex":I
    :cond_8
    :goto_0
    if-nez v9, :cond_d

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 272
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "getFilepathFromUri: the uri does not starts with file://, return null Bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x0

    return-object v1

    .line 252
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v9    # "filepath":Ljava/lang/String;
    :cond_9
    :try_start_3
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "getFilepathFromUri: move to first record of cursor failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    const/4 v1, 0x0

    .line 264
    if-eqz v7, :cond_a

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_a
    return-object v1

    .line 261
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 262
    .local v11, "oce":Landroid/os/OperationCanceledException;
    :try_start_4
    const-string/jumbo v1, "DRM/DcfDecoder"

    invoke-static {v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    if-eqz v7, :cond_8

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 259
    .end local v11    # "oce":Landroid/os/OperationCanceledException;
    :catch_1
    move-exception v12

    .line 260
    .local v12, "se":Landroid/database/sqlite/SQLiteException;
    :try_start_5
    const-string/jumbo v1, "DRM/DcfDecoder"

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    if-eqz v7, :cond_8

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 257
    .end local v12    # "se":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v13

    .line 258
    .local v13, "ue":Ljava/lang/UnsupportedOperationException;
    :try_start_6
    const-string/jumbo v1, "DRM/DcfDecoder"

    invoke-static {v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 264
    if-eqz v7, :cond_8

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 255
    .end local v13    # "ue":Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v10

    .line 256
    .local v10, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string/jumbo v1, "DRM/DcfDecoder"

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 264
    if-eqz v7, :cond_8

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 263
    .end local v10    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    .line 264
    if-eqz v7, :cond_b

    .line 265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_b
    throw v1

    .line 275
    .end local v9    # "filepath":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 278
    :cond_d
    return-object v9
.end method

.method private native nativeDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method private native nativeDecryptFile(Ljava/lang/String;Z)[B
.end method

.method private native nativeForceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method private native nativeForceDecryptFile(Ljava/lang/String;Z)[B
.end method


# virtual methods
.method public decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "consume"    # Z

    .prologue
    const/4 v2, 0x0

    .line 129
    if-nez p1, :cond_0

    .line 130
    const-string/jumbo v0, "DRM/DcfDecoder"

    const-string/jumbo v1, "decodeFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v2

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "consume"    # Z

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "filepath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "decodeUri: can not get file path from uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v3

    .line 175
    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public decryptFile(Ljava/lang/String;Z)[B
    .locals 3
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "consume"    # Z

    .prologue
    const/4 v2, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string/jumbo v0, "DRM/DcfDecoder"

    const-string/jumbo v1, "decryptFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v2

    .line 80
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public decryptUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)[B
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "consume"    # Z

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "filepath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "decryptUri: can not get file path from uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v3

    .line 104
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public forceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "consume"    # Z

    .prologue
    const/4 v2, 0x0

    .line 150
    if-nez p1, :cond_0

    .line 151
    const-string/jumbo v0, "DRM/DcfDecoder"

    const-string/jumbo v1, "forceDecodeFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v2

    .line 154
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeForceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public forceDecodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "consume"    # Z

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "filepath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 194
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "forceDecodeUri: can not get file path from uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v3

    .line 197
    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public forceDecryptFile(Ljava/lang/String;Z)[B
    .locals 3
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "consume"    # Z

    .prologue
    const/4 v2, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string/jumbo v0, "DRM/DcfDecoder"

    const-string/jumbo v1, "forceDecryptFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-object v2

    .line 95
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeForceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public forceDecryptUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)[B
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "consume"    # Z

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->getFilepathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "filepath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 110
    const-string/jumbo v1, "DRM/DcfDecoder"

    const-string/jumbo v2, "forceDecryptUri: can not get file path from uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v3

    .line 113
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method
