.class public Landroid/telecom/PhoneAccount$Builder;
.super Ljava/lang/Object;
.source "PhoneAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mCapabilities:I

.field private mHighlightColor:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsEnabled:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mShortDescription:Ljava/lang/CharSequence;

.field private mSubscriptionAddress:Landroid/net/Uri;

.field private mSupportedUriSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccount;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput v1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 233
    iput-boolean v1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 250
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 251
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 252
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 253
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 254
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v0

    iput v0, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 255
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 256
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getShortDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 257
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getSupportedUriSchemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 259
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput v1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 233
    iput-boolean v1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 239
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 240
    iput-object p2, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 238
    return-void
.end method


# virtual methods
.method public addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;
    .locals 1
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object p0

    .line 335
    :cond_1
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public build()Landroid/telecom/PhoneAccount;
    .locals 12

    .prologue
    .line 376
    iget-object v0, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string/jumbo v0, "tel"

    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    .line 380
    :cond_0
    new-instance v0, Landroid/telecom/PhoneAccount;

    .line 381
    iget-object v1, p0, Landroid/telecom/PhoneAccount$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 382
    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 383
    iget-object v3, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 384
    iget v4, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 385
    iget-object v5, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 386
    iget v6, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 387
    iget-object v7, p0, Landroid/telecom/PhoneAccount$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 388
    iget-object v8, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 389
    iget-object v9, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    .line 390
    iget-boolean v10, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 380
    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/telecom/PhoneAccount;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/net/Uri;ILandroid/graphics/drawable/Icon;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ZLandroid/telecom/PhoneAccount;)V

    return-object v0
.end method

.method public setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    .line 269
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mAddress:Landroid/net/Uri;

    .line 270
    return-object p0
.end method

.method public setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 291
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mCapabilities:I

    .line 292
    return-object p0
.end method

.method public setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 312
    iput p1, p0, Landroid/telecom/PhoneAccount$Builder;->mHighlightColor:I

    .line 313
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 301
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 302
    return-object p0
.end method

.method public setIsEnabled(Z)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Landroid/telecom/PhoneAccount$Builder;->mIsEnabled:Z

    .line 366
    return-object p0
.end method

.method public setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 323
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mShortDescription:Ljava/lang/CharSequence;

    .line 324
    return-object p0
.end method

.method public setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;
    .locals 0
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    .line 280
    iput-object p1, p0, Landroid/telecom/PhoneAccount$Builder;->mSubscriptionAddress:Landroid/net/Uri;

    .line 281
    return-object p0
.end method

.method public setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/PhoneAccount$Builder;"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/PhoneAccount$Builder;->mSupportedUriSchemes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 349
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    return-object p0

    .line 350
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "uriScheme$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, "uriScheme":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    goto :goto_0
.end method
