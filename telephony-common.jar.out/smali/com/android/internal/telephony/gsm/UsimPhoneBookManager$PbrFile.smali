.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFile"
.end annotation


# instance fields
.field mAasFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAdnFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAnrFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAnrFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCcpFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEmailFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mExt1Fileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mGasFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field mIapCount:I

.field mSliceCount:I

.field mSneFileids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    .line 1618
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    .line 1617
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mIapCount:I

    .line 1619
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 1620
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    .line 1621
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    .line 1622
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    .line 1623
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    .line 1624
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mExt1Fileids:Ljava/util/ArrayList;

    .line 1625
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mGasFileids:Ljava/util/ArrayList;

    .line 1626
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAasFileids:Ljava/util/ArrayList;

    .line 1627
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    .line 1628
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCcpFileids:Ljava/util/ArrayList;

    .line 1630
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    .line 1631
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1632
    .local v1, "record":[B
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v3, v1

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1633
    .local v0, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1634
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    goto :goto_0

    .line 1618
    .end local v0    # "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v1    # "record":[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;Ljava/util/ArrayList;II)V
    .locals 10
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p4, "parentTag"    # I
    .param p5, "recNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, "anr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x1

    const/16 v8, 0xa9

    .line 1665
    const/4 v4, 0x0

    .line 1667
    .local v4, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v3

    .line 1668
    .local v3, "tag":I
    if-ne p4, v8, :cond_1

    const/16 v5, 0xca

    if-ne v3, v5, :cond_1

    .line 1669
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v5, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 1670
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v5, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 1672
    :cond_1
    const-string/jumbo v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UsimPhoneBookManager parseEf tag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    packed-switch v3, :pswitch_data_0

    .line 1738
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 1739
    if-ne p4, v8, :cond_2

    .line 1740
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mIapCount:I

    .line 1742
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1662
    return-void

    .line 1687
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1688
    .local v0, "data":[B
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, v0, v9

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 1689
    .local v1, "efid":I
    const/16 v5, 0xc4

    if-ne v3, v5, :cond_5

    .line 1690
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 1695
    .local v2, "object":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iput v3, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    .line 1696
    iput p5, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 1697
    iput v1, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    .line 1698
    iput p4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    .line 1699
    if-ne p4, v8, :cond_3

    .line 1700
    iput v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    .line 1702
    :cond_3
    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 1703
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    iput-byte v5, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    .line 1705
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pbr "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1706
    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1708
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1692
    .end local v2    # "object":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1711
    .restart local v2    # "object":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :pswitch_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1714
    :pswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mExt1Fileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1717
    :pswitch_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1720
    :pswitch_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAasFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1723
    :pswitch_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mGasFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1726
    :pswitch_8
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1729
    :pswitch_9
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCcpFileids:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1674
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1706
    :pswitch_data_1
    .packed-switch 0xc0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 7
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "recNum"    # I

    .prologue
    .line 1642
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1643
    .local v2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v3, "anr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    .line 1646
    .local v4, "tag":I
    packed-switch v4, :pswitch_data_0

    .line 1657
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    return-void

    .line 1650
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    .line 1651
    .local v6, "data":[B
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v0, v6

    const/4 v5, 0x0

    invoke-direct {v1, v6, v5, v0}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .local v1, "tlvEf":Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v0, p0

    move v5, p2

    .line 1652
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 1646
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
