.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VsimEvent"
.end annotation


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x5000


# instance fields
.field private mData:[B

.field private mDataLen:I

.field private mEventMaxDataLen:I

.field private mMessageId:I

.field private mReadOffset:I

.field private mSlotId:I

.field private mTransactionId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 405
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 417
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 416
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "length"    # I
    .param p4, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/16 v0, 0x5000

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 429
    iput p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mTransactionId:I

    .line 430
    iput p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mMessageId:I

    .line 431
    iput p4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mSlotId:I

    .line 432
    iput p3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 433
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    .line 434
    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 435
    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 428
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "ret":I
    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 590
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 592
    return v0

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 596
    monitor-enter p0

    .line 597
    :try_start_0
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    .line 598
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 601
    :cond_0
    :try_start_1
    new-array v1, p1, [B

    .line 603
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 604
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 605
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 607
    return-object v1

    .line 596
    .end local v0    # "i":I
    .end local v1    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getData()[B
    .locals 5

    .prologue
    .line 516
    monitor-enter p0

    .line 517
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    new-array v0, v1, [B

    .line 518
    .local v0, "tempData":[B
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 519
    return-object v0

    .line 516
    .end local v0    # "tempData":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 524
    monitor-enter p0

    .line 525
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFirstSlotId()I
    .locals 5

    .prologue
    .line 547
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 548
    .local v1, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 550
    const-string/jumbo v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFirstSlotId, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 551
    const-string/jumbo v4, ", slot bit mapping = "

    .line 550
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 551
    invoke-virtual {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    .line 550
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return v0

    .line 548
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getInt()I
    .locals 4

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "ret":I
    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 566
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 567
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 566
    or-int/2addr v1, v2

    .line 568
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 566
    or-int/2addr v1, v2

    .line 569
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 566
    or-int v0, v1, v2

    .line 570
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 573
    return v0

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mMessageId:I

    return v0
.end method

.method public getShort()I
    .locals 4

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "ret":I
    monitor-enter p0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 580
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 582
    return v0

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSlotBitMask()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mSlotId:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 612
    new-array v0, p1, [B

    .line 614
    .local v0, "buf":[B
    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 616
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 619
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mTransactionId:I

    return v0
.end method

.method public putByte(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 469
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 472
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 473
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 475
    const/4 v0, 0x0

    return v0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putBytes([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    array-length v0, p1

    .line 505
    .local v0, "len":I
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_0

    .line 506
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 509
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 510
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 512
    return v4

    .line 502
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putInt(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x4

    if-le v1, v2, :cond_0

    .line 441
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 444
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 445
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 446
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 449
    const/4 v1, 0x0

    return v1

    .line 439
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putShort(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_0

    .line 455
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 458
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 459
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 460
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 463
    const/4 v1, 0x0

    return v1

    .line 453
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putString(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v7, 0x0

    .line 479
    monitor-enter p0

    .line 480
    :try_start_0
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, p2

    if-le v3, v4, :cond_0

    .line 481
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 484
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 485
    .local v2, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 486
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 487
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 498
    return v7

    .line 489
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, p2, v3

    .line 490
    .local v1, "remain":I
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 491
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 493
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 494
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    .end local v1    # "remain":I
    .end local v2    # "s":[B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
