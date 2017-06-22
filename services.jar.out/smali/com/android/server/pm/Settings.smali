.class final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$DatabaseVersion;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field static final MTKFLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static mFirstAvailableUid:I


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 234
    sput v5, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3321
    const/high16 v0, 0x8000000

    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3322
    const/high16 v0, 0x10000000

    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3323
    const/high16 v0, 0x20000000

    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    .line 3324
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4009
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    .line 4010
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "SYSTEM"

    aput-object v1, v0, v3

    .line 4011
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "DEBUGGABLE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4012
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "HAS_CODE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 4013
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "PERSISTENT"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 4014
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "FACTORY_TEST"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 4015
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "ALLOW_TASK_REPARENTING"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 4016
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "ALLOW_CLEAR_USER_DATA"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 4017
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "UPDATED_SYSTEM_APP"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 4018
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "TEST_ONLY"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 4019
    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "VM_SAFE_MODE"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 4020
    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "ALLOW_BACKUP"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 4021
    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "KILL_AFTER_RESTORE"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 4022
    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "RESTORE_ANY_VERSION"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 4023
    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "EXTERNAL_STORAGE"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 4024
    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "LARGE_HEAP"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 4009
    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4027
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 4028
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "PRIVILEGED"

    aput-object v1, v0, v3

    .line 4029
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "FORWARD_LOCK"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4030
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "CANT_SAVE_STATE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 4027
    sput-object v0, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4034
    new-array v0, v4, [Ljava/lang/Object;

    .line 4035
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "OPERATOR"

    aput-object v1, v0, v3

    .line 4034
    sput-object v0, Lcom/android/server/pm/Settings;->MTKFLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 124
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/Object;)V
    .locals 4
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x1

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 223
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 228
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 227
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 231
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 237
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 282
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 281
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 287
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 286
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 291
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 290
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 294
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 293
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 296
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 302
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 307
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 306
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    .line 311
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 310
    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 324
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 327
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 342
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 349
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 351
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 353
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 354
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    const/16 v1, 0x1fd

    .line 355
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 359
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 360
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 361
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 365
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-stopped.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 366
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-stopped-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 348
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 345
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .prologue
    const/4 v4, 0x6

    .line 816
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    if-eqz p3, :cond_1

    .line 818
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v2, p3, :cond_5

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    const-string/jumbo v3, " but is now "

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 822
    const-string/jumbo v3, "; I am not changing its files so it will probably fail!"

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 823
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 832
    :cond_0
    :goto_0
    invoke-virtual {p3, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 833
    iput-object p3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 834
    iget v2, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 839
    :cond_1
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v1

    .line 840
    .local v1, "userIdPs":Ljava/lang/Object;
    if-nez p3, :cond_6

    .line 841
    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    .line 842
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    .line 850
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 851
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v0, :cond_4

    .line 852
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_3

    .line 853
    const-string/jumbo v2, "PackageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Applying restored IVI for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 815
    :cond_4
    return-void

    .line 824
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v1    # "userIdPs":Ljava/lang/Object;
    :cond_5
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v3, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v2, v3, :cond_0

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 827
    const-string/jumbo v3, " but is now user "

    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 828
    const-string/jumbo v3, " with id "

    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 828
    iget v3, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 829
    const-string/jumbo v3, "; I am not changing its files so it will probably fail!"

    .line 826
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 825
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 845
    .restart local v1    # "userIdPs":Ljava/lang/Object;
    :cond_6
    if-eqz v1, :cond_2

    if-eq v1, p3, :cond_2

    .line 846
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v2, p3}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 974
    const/16 v2, 0x4e1f

    if-le p1, v2, :cond_0

    .line 975
    return v4

    .line 978
    :cond_0
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_3

    .line 979
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 980
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 981
    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 982
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 985
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding duplicate user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 988
    const-string/jumbo v3, " name="

    .line 987
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 986
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 989
    return v4

    .line 991
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .end local v0    # "N":I
    .end local v1    # "index":I
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 993
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 996
    const-string/jumbo v3, " name="

    .line 995
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 994
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 997
    return v4

    .line 999
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 19
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    .prologue
    .line 3001
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .line 3002
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    .line 3001
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v7, v0, v8, v1, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v16

    .line 3003
    .local v16, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Queried "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3004
    const-string/jumbo v18, " results: "

    .line 3003
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :cond_0
    const/4 v5, 0x0

    .line 3007
    .local v5, "systemMatch":I
    if-eqz v16, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_14

    .line 3008
    const/4 v13, 0x0

    .line 3009
    .local v13, "haveAct":Z
    const/4 v14, 0x0

    .line 3010
    .local v14, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Landroid/content/ComponentName;

    .line 3011
    .local v6, "set":[Landroid/content/ComponentName;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    if-ge v15, v7, :cond_2

    .line 3012
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3013
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v15

    .line 3014
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_5

    .line 3015
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v7, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-ltz v7, :cond_7

    .line 3019
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Result "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3020
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3019
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3020
    const-string/jumbo v18, "/"

    .line 3019
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3020
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3019
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3020
    const-string/jumbo v18, ": non-system!"

    .line 3019
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    :cond_1
    aget-object v14, v6, v15

    .line 3035
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v14    # "haveNonSys":Landroid/content/ComponentName;
    :cond_2
    if-eqz v14, :cond_3

    if-lez v5, :cond_3

    .line 3040
    const/4 v14, 0x0

    .line 3042
    :cond_3
    if-eqz v13, :cond_10

    if-nez v14, :cond_10

    .line 3043
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 3044
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3045
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3047
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 3048
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "cat$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3049
    .local v10, "cat":Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 3024
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "cat":Ljava/lang/String;
    .end local v11    # "cat$iterator":Ljava/util/Iterator;
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "haveNonSys":Landroid/content/ComponentName;
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3025
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3024
    if-eqz v7, :cond_8

    .line 3026
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Result "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3027
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3026
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3027
    const-string/jumbo v18, "/"

    .line 3026
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3027
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3026
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3027
    const-string/jumbo v18, ": default!"

    .line 3026
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    :cond_6
    const/4 v13, 0x1

    .line 3029
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v5, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 3011
    :cond_7
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 3031
    :cond_8
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Result "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3032
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3031
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3032
    const-string/jumbo v18, "/"

    .line 3031
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3032
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3031
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3032
    const-string/jumbo v18, ": skipped"

    .line 3031
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3052
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v14    # "haveNonSys":Landroid/content/ComponentName;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :cond_9
    const/high16 v7, 0x10000

    and-int v7, v7, p3

    if-eqz v7, :cond_a

    .line 3053
    const-string/jumbo v7, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3055
    :cond_a
    if-eqz p5, :cond_b

    .line 3056
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3058
    :cond_b
    if-eqz p6, :cond_c

    .line 3059
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3061
    :cond_c
    if-eqz p7, :cond_d

    .line 3062
    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3064
    :cond_d
    if-eqz p8, :cond_e

    .line 3065
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3067
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 3069
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3074
    :cond_f
    :goto_3
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    const/4 v8, 0x1

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3075
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 3000
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v13    # "haveAct":Z
    .end local v15    # "i":I
    :goto_4
    return-void

    .line 3070
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "set":[Landroid/content/ComponentName;
    .restart local v13    # "haveAct":Z
    .restart local v15    # "i":I
    :catch_0
    move-exception v12

    .line 3071
    .local v12, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Malformed mimetype "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v18, " for "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3076
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_10
    if-nez v14, :cond_13

    .line 3077
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 3078
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "No component "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    const-string/jumbo v7, " found setting preferred "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3082
    const-string/jumbo v7, "; possible matches are "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    const/4 v15, 0x0

    :goto_5
    array-length v7, v6

    if-ge v15, v7, :cond_12

    .line 3084
    if-lez v15, :cond_11

    const-string/jumbo v7, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    :cond_11
    aget-object v7, v6, v15

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 3087
    :cond_12
    const-string/jumbo v7, "PackageSettings"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3089
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_13
    const-string/jumbo v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Not setting preferred "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v18, "; found third party match "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3090
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v18

    .line 3089
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3093
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v13    # "haveAct":Z
    .end local v15    # "i":I
    :cond_14
    const-string/jumbo v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "No potential matches found for "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v18, " while setting preferred "

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3094
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v18

    .line 3093
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 42
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .prologue
    .line 2892
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_0

    .line 2893
    const-string/jumbo v2, "PackageSettings"

    const-string/jumbo v3, "Processing preferred:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    new-instance v2, Landroid/util/LogPrinter;

    const-string/jumbo v3, "PackageSettings"

    const/4 v6, 0x3

    invoke-direct {v2, v6, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string/jumbo v3, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2896
    :cond_0
    new-instance v37, Landroid/content/Intent;

    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 2897
    .local v37, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 2898
    .local v5, "flags":I
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2899
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_2

    .line 2900
    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v29

    .line 2901
    .local v29, "cat":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2902
    const/high16 v2, 0x10000

    or-int/2addr v5, v2

    .line 2899
    :goto_1
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 2904
    :cond_1
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2908
    .end local v29    # "cat":Ljava/lang/String;
    :cond_2
    const/16 v31, 0x1

    .line 2909
    .local v31, "doNonData":Z
    const/16 v33, 0x0

    .line 2911
    .local v33, "hasSchemes":Z
    const/16 v39, 0x0

    .local v39, "ischeme":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    move/from16 v0, v39

    if-ge v0, v2, :cond_c

    .line 2912
    const/16 v32, 0x1

    .line 2913
    .local v32, "doScheme":Z
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v7

    .line 2914
    .local v7, "scheme":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2917
    :cond_3
    :goto_3
    const/16 v40, 0x0

    .local v40, "issp":I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v2

    move/from16 v0, v40

    if-ge v0, v2, :cond_5

    .line 2918
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 2919
    .local v28, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2920
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v8

    .line 2921
    .local v8, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual {v8}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2922
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2923
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2925
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v11, p4

    .line 2924
    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 2926
    const/16 v32, 0x0

    .line 2917
    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    .line 2915
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v8    # "ssp":Landroid/os/PatternMatcher;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    .end local v40    # "issp":I
    :cond_4
    const/16 v33, 0x1

    goto :goto_3

    .line 2928
    .restart local v40    # "issp":I
    :cond_5
    const/16 v35, 0x0

    .local v35, "iauth":I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    move/from16 v0, v35

    if-ge v0, v2, :cond_a

    .line 2929
    const/16 v30, 0x1

    .line 2930
    .local v30, "doAuth":Z
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v16

    .line 2931
    .local v16, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    const/16 v38, 0x0

    .local v38, "ipath":I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v2

    move/from16 v0, v38

    if-ge v0, v2, :cond_7

    .line 2932
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 2933
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2934
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2935
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2937
    :cond_6
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v17

    .line 2938
    .local v17, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2939
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2940
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2942
    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move v12, v5

    move-object/from16 v13, p3

    move-object v14, v7

    move/from16 v18, p4

    .line 2941
    invoke-direct/range {v9 .. v18}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 2943
    const/16 v32, 0x0

    const/16 v30, 0x0

    .line 2931
    add-int/lit8 v38, v38, 0x1

    goto :goto_6

    .line 2945
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "path":Landroid/os/PatternMatcher;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_7
    if-eqz v30, :cond_9

    .line 2946
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 2947
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2948
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2949
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2951
    :cond_8
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2952
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2954
    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move-object/from16 v25, v16

    move/from16 v27, p4

    .line 2953
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 2955
    const/16 v32, 0x0

    .line 2928
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_9
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_5

    .line 2958
    .end local v16    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v30    # "doAuth":Z
    .end local v38    # "ipath":I
    :cond_a
    if-eqz v32, :cond_b

    .line 2959
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 2960
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2961
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2962
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2964
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move/from16 v27, p4

    .line 2963
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 2966
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_b
    const/16 v31, 0x0

    .line 2911
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_2

    .line 2969
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v32    # "doScheme":Z
    .end local v35    # "iauth":I
    .end local v40    # "issp":I
    :cond_c
    const/16 v36, 0x0

    .local v36, "idata":I
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    move/from16 v0, v36

    if-ge v0, v2, :cond_11

    .line 2970
    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v41

    .line 2971
    .local v41, "mimeType":Ljava/lang/String;
    if-eqz v33, :cond_f

    .line 2972
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 2973
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    const/16 v39, 0x0

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    move/from16 v0, v39

    if-ge v0, v2, :cond_10

    .line 2974
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v7

    .line 2975
    .restart local v7    # "scheme":Ljava/lang/String;
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2973
    :cond_d
    :goto_9
    add-int/lit8 v39, v39, 0x1

    goto :goto_8

    .line 2976
    :cond_e
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2977
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2978
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2980
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move/from16 v27, p4

    .line 2979
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_9

    .line 2984
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_f
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2985
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2987
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move/from16 v27, p4

    .line 2986
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 2989
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :cond_10
    const/16 v31, 0x0

    .line 2969
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_7

    .line 2992
    .end local v41    # "mimeType":Ljava/lang/String;
    :cond_11
    if-eqz v31, :cond_12

    .line 2994
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v37

    move/from16 v21, v5

    move-object/from16 v22, p3

    move/from16 v27, p4

    .line 2993
    invoke-direct/range {v18 .. v27}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 2887
    :cond_12
    return-void
.end method

.method private compToString(Landroid/util/ArraySet;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3863
    .local p1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "[]"

    goto :goto_0
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 4511
    if-nez p1, :cond_0

    .line 4512
    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4510
    :goto_0
    return-void

    .line 4515
    :cond_0
    const-string/jumbo v1, "["

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4516
    const-string/jumbo v1, "base"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4517
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    if-eqz v1, :cond_1

    .line 4518
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4520
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 4522
    const-string/jumbo v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4523
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4524
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    if-eqz v1, :cond_2

    .line 4525
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4521
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4529
    .end local v0    # "i":I
    :cond_3
    const-string/jumbo v1, "]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;
    .locals 25
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "origPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p8, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p10, "vc"    # I
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I
    .param p13, "flagsEx"    # I
    .param p14, "installUser"    # Landroid/os/UserHandle;
    .param p15, "add"    # Z
    .param p16, "allowInstall"    # Z

    .prologue
    .line 570
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 571
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v23

    .line 572
    .local v23, "userManager":Lcom/android/server/pm/UserManagerService;
    if-eqz v4, :cond_1

    .line 573
    move-object/from16 v0, p8

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 574
    move-object/from16 v0, p9

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 576
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 578
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 582
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Trying to update system app code path from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 583
    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 582
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 583
    const-string/jumbo v8, " to "

    .line 582
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 583
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 582
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    :goto_0
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p4

    if-eq v5, v0, :cond_6

    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " shared user changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 601
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 600
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 602
    const-string/jumbo v6, " to "

    .line 600
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 603
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 600
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 604
    const-string/jumbo v6, "; replacing with new"

    .line 600
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 599
    const/4 v6, 0x5

    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 605
    const/4 v4, 0x0

    .line 614
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_1
    :goto_3
    if-nez v4, :cond_13

    .line 615
    if-eqz p2, :cond_7

    .line 618
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 620
    const/4 v12, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    .line 618
    invoke-direct/range {v4 .. v16}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 621
    .restart local v4    # "p":Lcom/android/server/pm/PackageSetting;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 622
    const-string/jumbo v8, " is adopting original package "

    .line 621
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 622
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 621
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_2
    iget-object v0, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v19, v0

    .line 626
    .local v19, "s":Lcom/android/server/pm/PackageSignatures;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 627
    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 628
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v5, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 629
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 630
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 631
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 635
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 711
    .end local v19    # "s":Lcom/android/server/pm/PackageSignatures;
    :goto_4
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gez v5, :cond_11

    .line 713
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " could not be assigned a valid uid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 712
    const/4 v6, 0x5

    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 714
    const/4 v5, 0x0

    return-object v5

    .line 587
    :cond_3
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " codePath changed from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 588
    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 587
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 588
    const-string/jumbo v8, " to "

    .line 587
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 588
    const-string/jumbo v8, "; Retaining data and using new"

    .line 587
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    move-object/from16 v0, p7

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_0

    .line 601
    :cond_4
    const-string/jumbo v5, "<nothing>"

    goto/16 :goto_1

    .line 603
    :cond_5
    const-string/jumbo v5, "<nothing>"

    goto/16 :goto_2

    .line 610
    :cond_6
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v6, p11, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 611
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v6, p12, 0x8

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    goto/16 :goto_3

    .line 638
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_7
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    .line 640
    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    .line 638
    invoke-direct/range {v4 .. v16}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 641
    .restart local v4    # "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 642
    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 644
    and-int/lit8 v5, p11, 0x1

    if-nez v5, :cond_c

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v24

    .line 651
    .local v24, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p14, :cond_9

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 652
    .local v18, "installUserId":I
    :goto_5
    if-eqz v24, :cond_c

    if-eqz p16, :cond_c

    .line 653
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "user$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 660
    .local v20, "user":Landroid/content/pm/UserInfo;
    if-eqz p14, :cond_a

    .line 661
    const/4 v5, -0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_8

    .line 662
    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 663
    :cond_8
    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v18

    if-ne v0, v5, :cond_b

    const/4 v7, 0x1

    .line 664
    .local v7, "installed":Z
    :goto_7
    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    .line 666
    const/4 v8, 0x1

    .line 667
    const/4 v9, 0x1

    .line 668
    const/4 v10, 0x0

    .line 669
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 670
    const/4 v14, 0x0

    .line 671
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 664
    invoke-virtual/range {v4 .. v16}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V

    .line 672
    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_6

    .line 651
    .end local v7    # "installed":Z
    .end local v18    # "installUserId":I
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    :cond_9
    const/16 v18, 0x0

    .restart local v18    # "installUserId":I
    goto :goto_5

    .line 660
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    .restart local v21    # "user$iterator":Ljava/util/Iterator;
    :cond_a
    const/4 v7, 0x1

    .restart local v7    # "installed":Z
    goto :goto_7

    .line 663
    .end local v7    # "installed":Z
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "installed":Z
    goto :goto_7

    .line 676
    .end local v7    # "installed":Z
    .end local v18    # "installUserId":I
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    if-eqz p4, :cond_d

    .line 677
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_4

    .line 680
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/PackageSetting;

    .line 681
    .local v17, "dis":Lcom/android/server/pm/PackageSetting;
    if-eqz v17, :cond_10

    .line 686
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_e

    .line 687
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Signature;

    iput-object v5, v6, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 689
    :cond_e
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 691
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v24

    .line 694
    .restart local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v24, :cond_f

    .line 695
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "user$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 696
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    .line 698
    .local v22, "userId":I
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 697
    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 700
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 699
    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    goto :goto_8

    .line 704
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v22    # "userId":I
    :cond_f
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v4, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 707
    .end local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_4

    .line 716
    .end local v17    # "dis":Lcom/android/server/pm/PackageSetting;
    :cond_11
    if-eqz p15, :cond_12

    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    .line 742
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_12
    return-object v4

    .line 722
    :cond_13
    if-eqz p14, :cond_12

    if-eqz p16, :cond_12

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v24

    .line 727
    .restart local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v24, :cond_12

    .line 728
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "user$iterator":Ljava/util/Iterator;
    :cond_14
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 729
    .restart local v20    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_15

    .line 730
    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 731
    :cond_15
    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v6, :cond_14

    .line 732
    :cond_16
    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    .line 733
    .local v7, "installed":Z
    if-nez v7, :cond_14

    .line 734
    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 735
    move-object/from16 v0, v20

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_9
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1210
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 1211
    const-string/jumbo v2, "package-restrictions-backup.xml"

    .line 1210
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1198
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1199
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1205
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1206
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3830
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3831
    .local v0, "N":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3832
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3833
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3834
    add-int/lit16 v2, v1, 0x2710

    return v2

    .line 3831
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3839
    :cond_1
    const/16 v2, 0x270f

    if-le v0, v2, :cond_2

    .line 3840
    const/4 v2, -0x1

    return v2

    .line 3843
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3844
    add-int/lit16 v2, v0, 0x2710

    return v2
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 4559
    const/4 v1, 0x0

    .line 4560
    :goto_0
    if-eqz p1, :cond_1

    .line 4561
    if-nez v1, :cond_0

    .line 4562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4563
    .local v1, "flagsString":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4564
    const-string/jumbo v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4566
    .end local v1    # "flagsString":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v0, v3, v2

    .line 4567
    .local v0, "flag":I
    not-int v2, v0

    and-int/2addr p1, v2

    .line 4568
    invoke-static {v0}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4569
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4571
    .end local v0    # "flag":I
    :cond_1
    if-eqz v1, :cond_2

    .line 4572
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4573
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4575
    :cond_2
    const-string/jumbo v2, ""

    return-object v2
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .prologue
    .line 3998
    const-string/jumbo v2, "[ "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3999
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 4000
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4001
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 4002
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4003
    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3999
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4006
    .end local v1    # "mask":I
    :cond_1
    const-string/jumbo v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3997
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 1579
    const/4 v1, 0x0

    .line 1581
    .local v1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1583
    .end local v1    # "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1584
    if-ne v4, v7, :cond_1

    .line 1585
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_3

    .line 1586
    :cond_1
    if-eq v4, v7, :cond_0

    .line 1587
    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1590
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1591
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1592
    const-string/jumbo v5, "name"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1594
    if-nez v1, :cond_2

    .line 1595
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1597
    :cond_2
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1601
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1320
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1322
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1323
    if-ne v4, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_3

    .line 1324
    :cond_1
    if-eq v4, v7, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1327
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1328
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1329
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1330
    .local v0, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 1332
    .end local v0    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1334
    .local v1, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1335
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1319
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 3101
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3103
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 3104
    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 3105
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 3109
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3110
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3111
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3112
    .local v2, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3113
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v2, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 3117
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3118
    iget-object v5, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    .line 3117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3118
    const-string/jumbo v5, " at "

    .line 3117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3119
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    .line 3117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3116
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 3123
    .end local v2    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3122
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3124
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3100
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 9
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 3638
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3640
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 3641
    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 3642
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 3646
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3647
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3648
    const-string/jumbo v4, "name"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3649
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3650
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    .line 3660
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3653
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3654
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    .line 3653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3652
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 3658
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3657
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 3637
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 32
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3193
    const-string/jumbo v6, "name"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3194
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "realName"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3195
    .local v4, "realName":Ljava/lang/String;
    const-string/jumbo v6, "codePath"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3196
    .local v15, "codePathStr":Ljava/lang/String;
    const-string/jumbo v6, "resourcePath"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3198
    .local v22, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v6, "requiredCpuAbi"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3199
    .local v20, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "nativeLibraryPath"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3201
    .local v7, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v6, "primaryCpuAbi"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3202
    .local v8, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "secondaryCpuAbi"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3203
    .local v9, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v6, "cpuAbiOverride"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3206
    .local v10, "cpuAbiOverrideStr":Ljava/lang/String;
    const-string/jumbo v6, "flags"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3207
    .local v17, "flagStr":Ljava/lang/String;
    const-string/jumbo v6, "flagsEx"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3209
    .local v18, "flagsExStr":Ljava/lang/String;
    if-nez v8, :cond_0

    if-eqz v20, :cond_0

    .line 3210
    move-object/from16 v8, v20

    .line 3213
    :cond_0
    if-nez v22, :cond_1

    .line 3214
    move-object/from16 v22, v15

    .line 3216
    :cond_1
    const-string/jumbo v6, "version"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3217
    .local v28, "version":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3218
    .local v11, "versionCode":I
    if-eqz v28, :cond_2

    .line 3220
    :try_start_0
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 3225
    :cond_2
    :goto_0
    const/4 v12, 0x0

    .line 3227
    .local v12, "pkgFlags":I
    const/4 v13, 0x0

    .line 3230
    .local v13, "pkgPrivateFlags":I
    const/4 v14, 0x0

    .line 3231
    .local v14, "flagsEx":I
    if-eqz v17, :cond_3

    .line 3232
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 3234
    :cond_3
    if-eqz v18, :cond_4

    .line 3235
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 3239
    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3240
    .local v5, "codePathFile":Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3241
    const/16 v13, 0x8

    .line 3245
    :cond_5
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->locationIsOperator(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3246
    or-int/lit8 v14, v14, 0x1

    .line 3248
    and-int/lit8 v12, v12, -0x2

    .line 3253
    :cond_6
    and-int/lit8 v6, v14, 0x1

    if-nez v6, :cond_7

    .line 3254
    or-int/lit8 v12, v12, 0x1

    .line 3259
    :cond_7
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    .line 3260
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3259
    invoke-direct/range {v2 .. v14}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 3263
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    const-string/jumbo v6, "ft"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3264
    .local v26, "timeStampStr":Ljava/lang/String;
    if-eqz v26, :cond_e

    .line 3266
    const/16 v6, 0x10

    :try_start_1
    move-object/from16 v0, v26

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    .line 3267
    .local v24, "timeStamp":J
    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3280
    .end local v24    # "timeStamp":J
    :cond_8
    :goto_1
    const-string/jumbo v6, "it"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3281
    if-eqz v26, :cond_9

    .line 3283
    const/16 v6, 0x10

    :try_start_2
    move-object/from16 v0, v26

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3287
    :cond_9
    :goto_2
    const-string/jumbo v6, "ut"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3288
    if-eqz v26, :cond_a

    .line 3290
    const/16 v6, 0x10

    :try_start_3
    move-object/from16 v0, v26

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3294
    :cond_a
    :goto_3
    const-string/jumbo v6, "userId"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3295
    .local v19, "idStr":Ljava/lang/String;
    if-eqz v19, :cond_f

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_4
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3296
    iget v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v6, :cond_b

    .line 3297
    const-string/jumbo v6, "sharedUserId"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3298
    .local v23, "sharedIdStr":Ljava/lang/String;
    if-eqz v23, :cond_10

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_5
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3301
    .end local v23    # "sharedIdStr":Ljava/lang/String;
    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    .line 3303
    .local v21, "outerDepth":I
    :cond_c
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v6, 0x1

    move/from16 v0, v27

    if-eq v0, v6, :cond_12

    .line 3304
    const/4 v6, 0x3

    move/from16 v0, v27

    if-ne v0, v6, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v21

    if-le v6, v0, :cond_12

    .line 3305
    :cond_d
    const/4 v6, 0x3

    move/from16 v0, v27

    if-eq v0, v6, :cond_c

    const/4 v6, 0x4

    move/from16 v0, v27

    if-eq v0, v6, :cond_c

    .line 3309
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v29, "perms"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3310
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    goto :goto_6

    .line 3221
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "codePathFile":Ljava/io/File;
    .end local v12    # "pkgFlags":I
    .end local v13    # "pkgPrivateFlags":I
    .end local v14    # "flagsEx":I
    .end local v19    # "idStr":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v26    # "timeStampStr":Ljava/lang/String;
    .end local v27    # "type":I
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 3271
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "codePathFile":Ljava/io/File;
    .restart local v12    # "pkgFlags":I
    .restart local v13    # "pkgPrivateFlags":I
    .restart local v14    # "flagsEx":I
    .restart local v26    # "timeStampStr":Ljava/lang/String;
    :cond_e
    const-string/jumbo v6, "ts"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3272
    if-eqz v26, :cond_8

    .line 3274
    :try_start_4
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 3275
    .restart local v24    # "timeStamp":J
    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 3276
    .end local v24    # "timeStamp":J
    :catch_1
    move-exception v16

    .restart local v16    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    .line 3295
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "idStr":Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_4

    .line 3298
    .restart local v23    # "sharedIdStr":Ljava/lang/String;
    :cond_10
    const/4 v6, 0x0

    goto :goto_5

    .line 3313
    .end local v23    # "sharedIdStr":Ljava/lang/String;
    .restart local v21    # "outerDepth":I
    .restart local v27    # "type":I
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unknown element under <updated-package>: "

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3312
    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3314
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3318
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    return-void

    .line 3291
    .end local v19    # "idStr":Ljava/lang/String;
    .end local v21    # "outerDepth":I
    .end local v27    # "type":I
    :catch_2
    move-exception v16

    .restart local v16    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    .line 3284
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v16

    .restart local v16    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    .line 3268
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v16

    .restart local v16    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1342
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1343
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1344
    const-string/jumbo v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Read domain verification for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 9
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 3666
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3668
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 3669
    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 3670
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 3674
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3675
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3676
    const-string/jumbo v4, "name"

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3677
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3678
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    .line 3688
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3681
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3682
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    .line 3681
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3680
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 3686
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3685
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 3665
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "ns"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defValue"    # I

    .prologue
    .line 3130
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3132
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3133
    return p4

    .line 3135
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3136
    :catch_0
    move-exception v0

    .line 3138
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in package manager settings: attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3139
    const-string/jumbo v3, " has bad integer value "

    .line 3138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3139
    const-string/jumbo v3, " at "

    .line 3138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    .line 3138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3137
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3142
    return p4
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 48
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3327
    const/16 v33, 0x0

    .line 3328
    .local v33, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3329
    .local v6, "realName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 3330
    .local v26, "idStr":Ljava/lang/String;
    const/16 v38, 0x0

    .line 3331
    .local v38, "sharedIdStr":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3332
    .local v19, "codePathStr":Ljava/lang/String;
    const/16 v37, 0x0

    .line 3333
    .local v37, "resourcePathStr":Ljava/lang/String;
    const/16 v29, 0x0

    .line 3334
    .local v29, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3335
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3336
    .local v10, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3337
    .local v11, "secondaryCpuAbiString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3338
    .local v12, "cpuAbiOverrideString":Ljava/lang/String;
    const/16 v39, 0x0

    .line 3339
    .local v39, "systemStr":Ljava/lang/String;
    const/16 v28, 0x0

    .line 3340
    .local v28, "installerPackageName":Ljava/lang/String;
    const/16 v47, 0x0

    .line 3341
    .local v47, "volumeUuid":Ljava/lang/String;
    const/16 v45, 0x0

    .line 3342
    .local v45, "uidError":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3343
    .local v15, "pkgFlags":I
    const/16 v16, 0x0

    .line 3344
    .local v16, "pkgPrivateFlags":I
    const-wide/16 v42, 0x0

    .line 3345
    .local v42, "timeStamp":J
    const-wide/16 v22, 0x0

    .line 3346
    .local v22, "firstInstallTime":J
    const-wide/16 v30, 0x0

    .line 3347
    .local v30, "lastUpdateTime":J
    const/16 v35, 0x0

    .line 3348
    .local v35, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    const/16 v46, 0x0

    .line 3349
    .local v46, "version":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3352
    .local v14, "versionCode":I
    const/16 v32, 0x0

    .line 3353
    .local v32, "mtkStr":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3356
    .local v17, "flagsEx":I
    :try_start_0
    const-string/jumbo v5, "name"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3357
    .local v33, "name":Ljava/lang/String;
    const-string/jumbo v5, "realName"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3358
    .local v6, "realName":Ljava/lang/String;
    const-string/jumbo v5, "userId"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3359
    .local v26, "idStr":Ljava/lang/String;
    const-string/jumbo v5, "uidError"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3360
    .local v45, "uidError":Ljava/lang/String;
    const-string/jumbo v5, "sharedUserId"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 3361
    .local v38, "sharedIdStr":Ljava/lang/String;
    const-string/jumbo v5, "codePath"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3362
    .local v19, "codePathStr":Ljava/lang/String;
    const-string/jumbo v5, "resourcePath"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 3364
    .local v37, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v5, "requiredCpuAbi"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3366
    .local v29, "legacyCpuAbiString":Ljava/lang/String;
    const-string/jumbo v5, "nativeLibraryPath"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3367
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v5, "primaryCpuAbi"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3368
    .local v10, "primaryCpuAbiString":Ljava/lang/String;
    const-string/jumbo v5, "secondaryCpuAbi"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3369
    .local v11, "secondaryCpuAbiString":Ljava/lang/String;
    const-string/jumbo v5, "cpuAbiOverride"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3371
    .local v12, "cpuAbiOverrideString":Ljava/lang/String;
    if-nez v10, :cond_0

    if-eqz v29, :cond_0

    .line 3372
    move-object/from16 v10, v29

    .line 3375
    :cond_0
    const-string/jumbo v5, "version"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-object v46

    .line 3376
    .local v46, "version":Ljava/lang/String;
    if-eqz v46, :cond_1

    .line 3378
    :try_start_1
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    .line 3382
    :cond_1
    :goto_0
    :try_start_2
    const-string/jumbo v5, "installer"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3383
    .local v28, "installerPackageName":Ljava/lang/String;
    const-string/jumbo v5, "volumeUuid"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3385
    .local v47, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v5, "publicFlags"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v39

    .line 3386
    .local v39, "systemStr":Ljava/lang/String;
    if-eqz v39, :cond_e

    .line 3388
    :try_start_3
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    .line 3391
    :goto_1
    :try_start_4
    const-string/jumbo v5, "privateFlags"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_b

    move-result-object v39

    .line 3392
    if-eqz v39, :cond_2

    .line 3394
    :try_start_5
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v16

    .line 3437
    :cond_2
    :goto_2
    :try_start_6
    const-string/jumbo v5, "flagsEx"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_b

    move-result-object v32

    .line 3438
    .local v32, "mtkStr":Ljava/lang/String;
    if-eqz v32, :cond_3

    .line 3440
    :try_start_7
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v17

    .line 3445
    :cond_3
    :goto_3
    :try_start_8
    const-string/jumbo v5, "ft"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_b

    move-result-object v41

    .line 3446
    .local v41, "timeStampStr":Ljava/lang/String;
    if-eqz v41, :cond_16

    .line 3448
    const/16 v5, 0x10

    :try_start_9
    move-object/from16 v0, v41

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-wide v42

    .line 3460
    :cond_4
    :goto_4
    :try_start_a
    const-string/jumbo v5, "it"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_b

    move-result-object v41

    .line 3461
    if-eqz v41, :cond_5

    .line 3463
    const/16 v5, 0x10

    :try_start_b
    move-object/from16 v0, v41

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_7

    move-result-wide v22

    .line 3467
    :cond_5
    :goto_5
    :try_start_c
    const-string/jumbo v5, "ut"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_b

    move-result-object v41

    .line 3468
    if-eqz v41, :cond_6

    .line 3470
    const/16 v5, 0x10

    :try_start_d
    move-object/from16 v0, v41

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_8

    move-result-wide v30

    .line 3474
    :cond_6
    :goto_6
    :try_start_e
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v5, :cond_7

    .line 3475
    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Reading package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3476
    const-string/jumbo v8, " sharedUserId="

    .line 3475
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_7
    if-eqz v26, :cond_17

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3478
    .local v13, "userId":I
    :goto_7
    if-nez v37, :cond_8

    .line 3479
    move-object/from16 v37, v19

    .line 3481
    :cond_8
    if-eqz v6, :cond_9

    .line 3482
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 3484
    :cond_9
    if-nez v33, :cond_18

    .line 3486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3487
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3486
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3485
    const/4 v7, 0x5

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_b

    move-object/from16 v4, v35

    .line 3541
    .end local v6    # "realName":Ljava/lang/String;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v19    # "codePathStr":Ljava/lang/String;
    .end local v26    # "idStr":Ljava/lang/String;
    .end local v28    # "installerPackageName":Ljava/lang/String;
    .end local v29    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v32    # "mtkStr":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .end local v35    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .end local v38    # "sharedIdStr":Ljava/lang/String;
    .end local v39    # "systemStr":Ljava/lang/String;
    .end local v41    # "timeStampStr":Ljava/lang/String;
    .end local v45    # "uidError":Ljava/lang/String;
    .end local v46    # "version":Ljava/lang/String;
    .end local v47    # "volumeUuid":Ljava/lang/String;
    .local v4, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_a
    :goto_8
    if-eqz v4, :cond_2f

    .line 3542
    const-string/jumbo v5, "true"

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 3543
    move-object/from16 v0, v28

    iput-object v0, v4, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 3544
    move-object/from16 v0, v47

    iput-object v0, v4, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 3545
    iput-object v9, v4, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3546
    iput-object v10, v4, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 3547
    iput-object v11, v4, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3549
    const-string/jumbo v5, "enabled"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3550
    .local v21, "enabledStr":Ljava/lang/String;
    if-eqz v21, :cond_23

    .line 3552
    :try_start_f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_a

    .line 3571
    :goto_9
    const-string/jumbo v5, "installStatus"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3572
    .local v27, "installStatusStr":Ljava/lang/String;
    if-eqz v27, :cond_b

    .line 3573
    const-string/jumbo v5, "false"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3574
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 3579
    :cond_b
    :goto_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v34

    .line 3581
    .local v34, "outerDepth":I
    :cond_c
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v44

    .local v44, "type":I
    const/4 v5, 0x1

    move/from16 v0, v44

    if-eq v0, v5, :cond_30

    .line 3582
    const/4 v5, 0x3

    move/from16 v0, v44

    if-ne v0, v5, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v34

    if-le v5, v0, :cond_30

    .line 3583
    :cond_d
    const/4 v5, 0x3

    move/from16 v0, v44

    if-eq v0, v5, :cond_c

    const/4 v5, 0x4

    move/from16 v0, v44

    if-eq v0, v5, :cond_c

    .line 3587
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 3589
    .local v40, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "disabled-components"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3590
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_b

    .line 3379
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v21    # "enabledStr":Ljava/lang/String;
    .end local v27    # "installStatusStr":Ljava/lang/String;
    .end local v34    # "outerDepth":I
    .end local v40    # "tagName":Ljava/lang/String;
    .end local v44    # "type":I
    .restart local v6    # "realName":Ljava/lang/String;
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v19    # "codePathStr":Ljava/lang/String;
    .restart local v26    # "idStr":Ljava/lang/String;
    .local v28, "installerPackageName":Ljava/lang/String;
    .restart local v29    # "legacyCpuAbiString":Ljava/lang/String;
    .local v32, "mtkStr":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    .restart local v35    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v38    # "sharedIdStr":Ljava/lang/String;
    .local v39, "systemStr":Ljava/lang/String;
    .restart local v45    # "uidError":Ljava/lang/String;
    .restart local v46    # "version":Ljava/lang/String;
    .local v47, "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 3389
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .local v28, "installerPackageName":Ljava/lang/String;
    .local v39, "systemStr":Ljava/lang/String;
    .local v47, "volumeUuid":Ljava/lang/String;
    :catch_1
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    .line 3395
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    .line 3400
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    :try_start_10
    const-string/jumbo v5, "flags"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_b

    move-result-object v39

    .line 3401
    if-eqz v39, :cond_13

    .line 3403
    :try_start_11
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_3

    move-result v15

    .line 3406
    :goto_c
    :try_start_12
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int/2addr v5, v15

    if-eqz v5, :cond_f

    .line 3407
    const/16 v16, 0x1

    .line 3409
    :cond_f
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int/2addr v5, v15

    if-eqz v5, :cond_10

    .line 3410
    or-int/lit8 v16, v16, 0x2

    .line 3412
    :cond_10
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    and-int/2addr v5, v15

    if-eqz v5, :cond_11

    .line 3413
    or-int/lit8 v16, v16, 0x4

    .line 3415
    :cond_11
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int/2addr v5, v15

    if-eqz v5, :cond_12

    .line 3416
    or-int/lit8 v16, v16, 0x8

    .line 3418
    :cond_12
    sget v5, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3419
    sget v7, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3418
    or-int/2addr v5, v7

    .line 3420
    sget v7, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    .line 3418
    or-int/2addr v5, v7

    .line 3421
    sget v7, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 3418
    or-int/2addr v5, v7

    not-int v5, v5

    and-int/2addr v15, v5

    goto/16 :goto_2

    .line 3404
    :catch_3
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    goto :goto_c

    .line 3424
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string/jumbo v5, "system"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 3425
    if-eqz v39, :cond_15

    .line 3426
    const-string/jumbo v5, "true"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    :goto_d
    or-int/lit8 v15, v5, 0x0

    goto/16 :goto_2

    .line 3427
    :cond_14
    const/4 v5, 0x0

    goto :goto_d

    .line 3431
    :cond_15
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 3441
    .local v32, "mtkStr":Ljava/lang/String;
    :catch_4
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_3

    .line 3449
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .restart local v41    # "timeStampStr":Ljava/lang/String;
    :catch_5
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4

    .line 3452
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    const-string/jumbo v5, "ts"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_b

    move-result-object v41

    .line 3453
    if-eqz v41, :cond_4

    .line 3455
    :try_start_13
    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_6

    move-result-wide v42

    goto/16 :goto_4

    .line 3456
    :catch_6
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4

    .line 3464
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_5

    .line 3471
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :catch_8
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_6

    .line 3477
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_17
    const/4 v13, 0x0

    .restart local v13    # "userId":I
    goto/16 :goto_7

    .line 3488
    :cond_18
    if-nez v19, :cond_19

    .line 3490
    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3491
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3490
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3489
    const/4 v7, 0x5

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v4, v35

    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_8

    .line 3492
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_19
    if-lez v13, :cond_1c

    .line 3494
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3495
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v37

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p0

    .line 3494
    invoke-virtual/range {v4 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)Lcom/android/server/pm/PackageSetting;
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_b

    move-result-object v4

    .line 3498
    .end local v35    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :try_start_15
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v5, :cond_1a

    .line 3499
    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Reading package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3500
    const-string/jumbo v8, " pkg="

    .line 3499
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    :cond_1a
    if-nez v4, :cond_1b

    .line 3502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure adding uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3503
    const-string/jumbo v7, " while parsing settings at "

    .line 3502
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3504
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3502
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_8

    .line 3536
    :catch_9
    move-exception v20

    .line 3538
    .end local v6    # "realName":Ljava/lang/String;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v19    # "codePathStr":Ljava/lang/String;
    .end local v26    # "idStr":Ljava/lang/String;
    .end local v28    # "installerPackageName":Ljava/lang/String;
    .end local v29    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v32    # "mtkStr":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .end local v38    # "sharedIdStr":Ljava/lang/String;
    .end local v39    # "systemStr":Ljava/lang/String;
    .end local v41    # "timeStampStr":Ljava/lang/String;
    .end local v45    # "uidError":Ljava/lang/String;
    .end local v46    # "version":Ljava/lang/String;
    .end local v47    # "volumeUuid":Ljava/lang/String;
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in package manager settings: package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " has bad userId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3539
    const-string/jumbo v7, " at "

    .line 3538
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3539
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3538
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3537
    const/4 v7, 0x5

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 3506
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "realName":Ljava/lang/String;
    .restart local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v13    # "userId":I
    .restart local v19    # "codePathStr":Ljava/lang/String;
    .restart local v26    # "idStr":Ljava/lang/String;
    .restart local v28    # "installerPackageName":Ljava/lang/String;
    .restart local v29    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v32    # "mtkStr":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v38    # "sharedIdStr":Ljava/lang/String;
    .restart local v39    # "systemStr":Ljava/lang/String;
    .restart local v41    # "timeStampStr":Ljava/lang/String;
    .restart local v45    # "uidError":Ljava/lang/String;
    .restart local v46    # "version":Ljava/lang/String;
    .restart local v47    # "volumeUuid":Ljava/lang/String;
    :cond_1b
    :try_start_16
    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 3507
    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 3508
    move-wide/from16 v0, v30

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_9

    goto/16 :goto_8

    .line 3510
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v35    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_1c
    if-eqz v38, :cond_1f

    .line 3511
    if-eqz v38, :cond_1d

    :try_start_17
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 3512
    :goto_f
    if-lez v13, :cond_1e

    .line 3514
    new-instance v4, Lcom/android/server/pm/PendingPackage;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3515
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v37

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3514
    invoke-direct/range {v4 .. v17}, Lcom/android/server/pm/PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_b

    .line 3518
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :try_start_18
    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 3519
    .end local v35    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 3520
    move-wide/from16 v0, v30

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 3521
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/PendingPackage;

    move-object v5, v0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3522
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v5, :cond_a

    .line 3523
    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Reading package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3524
    const-string/jumbo v8, ": sharedUserId="

    .line 3523
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3524
    const-string/jumbo v8, " pkg="

    .line 3523
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_9

    goto/16 :goto_8

    .line 3511
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v35    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_1d
    const/4 v13, 0x0

    goto :goto_f

    .line 3527
    :cond_1e
    :try_start_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in package manager settings: package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3528
    const-string/jumbo v7, " has bad sharedId "

    .line 3527
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3528
    const-string/jumbo v7, " at "

    .line 3527
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3529
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3527
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3526
    const/4 v7, 0x5

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v4, v35

    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_8

    .line 3533
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in package manager settings: package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " has bad userId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3534
    const-string/jumbo v7, " at "

    .line 3533
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3534
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3533
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3532
    const/4 v7, 0x5

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_b

    move-object/from16 v4, v35

    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_8

    .line 3553
    .end local v6    # "realName":Ljava/lang/String;
    .end local v9    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v10    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v11    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v12    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v19    # "codePathStr":Ljava/lang/String;
    .end local v26    # "idStr":Ljava/lang/String;
    .end local v28    # "installerPackageName":Ljava/lang/String;
    .end local v29    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v32    # "mtkStr":Ljava/lang/String;
    .end local v33    # "name":Ljava/lang/String;
    .end local v35    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .end local v38    # "sharedIdStr":Ljava/lang/String;
    .end local v39    # "systemStr":Ljava/lang/String;
    .end local v41    # "timeStampStr":Ljava/lang/String;
    .end local v45    # "uidError":Ljava/lang/String;
    .end local v46    # "version":Ljava/lang/String;
    .end local v47    # "volumeUuid":Ljava/lang/String;
    .restart local v21    # "enabledStr":Ljava/lang/String;
    :catch_a
    move-exception v20

    .line 3554
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "true"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 3555
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_9

    .line 3556
    :cond_20
    const-string/jumbo v5, "false"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3557
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_9

    .line 3558
    :cond_21
    const-string/jumbo v5, "default"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 3559
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_9

    .line 3562
    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in package manager settings: package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3563
    const-string/jumbo v7, " has bad enabled value: "

    .line 3562
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3563
    const-string/jumbo v7, " at "

    .line 3562
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3564
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3562
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3561
    const/4 v7, 0x5

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 3568
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_23
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_9

    .line 3576
    .restart local v27    # "installStatusStr":Ljava/lang/String;
    :cond_24
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    goto/16 :goto_a

    .line 3591
    .restart local v34    # "outerDepth":I
    .restart local v40    # "tagName":Ljava/lang/String;
    .restart local v44    # "type":I
    :cond_25
    const-string/jumbo v5, "enabled-components"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 3592
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_b

    .line 3593
    :cond_26
    const-string/jumbo v5, "sigs"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3594
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v7}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_b

    .line 3595
    :cond_27
    const-string/jumbo v5, "perms"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 3597
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v5

    .line 3596
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    .line 3598
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    goto/16 :goto_b

    .line 3599
    :cond_28
    const-string/jumbo v5, "proper-signing-keyset"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3600
    const-string/jumbo v5, "identifier"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 3601
    .local v24, "id":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    .line 3602
    .local v36, "refCt":Ljava/lang/Integer;
    if-eqz v36, :cond_29

    .line 3603
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3607
    :goto_10
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto/16 :goto_b

    .line 3605
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 3608
    .end local v24    # "id":J
    .end local v36    # "refCt":Ljava/lang/Integer;
    :cond_2a
    const-string/jumbo v5, "signing-keyset"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 3610
    const-string/jumbo v5, "upgrade-keyset"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 3611
    const-string/jumbo v5, "identifier"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 3612
    .restart local v24    # "id":J
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    goto/16 :goto_b

    .line 3613
    .end local v24    # "id":J
    :cond_2b
    const-string/jumbo v5, "defined-keyset"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3614
    const-string/jumbo v5, "identifier"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 3615
    .restart local v24    # "id":J
    const-string/jumbo v5, "alias"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3616
    .local v18, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    .line 3617
    .restart local v36    # "refCt":Ljava/lang/Integer;
    if-eqz v36, :cond_2c

    .line 3618
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3622
    :goto_11
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto/16 :goto_b

    .line 3620
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 3623
    .end local v18    # "alias":Ljava/lang/String;
    .end local v24    # "id":J
    .end local v36    # "refCt":Ljava/lang/Integer;
    :cond_2d
    const-string/jumbo v5, "domain-verification"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 3624
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_b

    .line 3627
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <package>: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3626
    const/4 v7, 0x5

    invoke-static {v7, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3628
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_b

    .line 3632
    .end local v21    # "enabledStr":Ljava/lang/String;
    .end local v27    # "installStatusStr":Ljava/lang/String;
    .end local v34    # "outerDepth":I
    .end local v40    # "tagName":Ljava/lang/String;
    .end local v44    # "type":I
    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3326
    :cond_30
    return-void

    .line 3536
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v35    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :catch_b
    move-exception v20

    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v4, v35

    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_e
.end method

.method private readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 3147
    .local p1, "out":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3149
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    .line 3150
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6

    .line 3151
    :cond_1
    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 3155
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3156
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3157
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3158
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v9, "package"

    const/4 v10, 0x0

    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3159
    .local v6, "sourcePackage":Ljava/lang/String;
    const-string/jumbo v9, "type"

    const/4 v10, 0x0

    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3160
    .local v5, "ptype":Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v6, :cond_4

    .line 3161
    const-string/jumbo v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3162
    .local v1, "dynamic":Z
    new-instance v0, Lcom/android/server/pm/BasePermission;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 3163
    if-eqz v1, :cond_3

    const/4 v9, 0x2

    .line 3162
    :goto_1
    invoke-direct {v0, v10, v6, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3164
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    const-string/jumbo v9, "protection"

    const/4 v10, 0x0

    .line 3165
    const/4 v11, 0x0

    .line 3164
    invoke-direct {p0, p2, v10, v9, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 3166
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 3167
    if-eqz v1, :cond_2

    .line 3168
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 3169
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 3170
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 3171
    const-string/jumbo v9, "icon"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v10, v9, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 3172
    const-string/jumbo v9, "label"

    const/4 v10, 0x0

    invoke-interface {p2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3173
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3174
    iput-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 3176
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_2
    iget-object v9, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3187
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "dynamic":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3163
    .restart local v1    # "dynamic":Z
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "ptype":Ljava/lang/String;
    .restart local v6    # "sourcePackage":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 3179
    .end local v1    # "dynamic":Z
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3180
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    .line 3179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3178
    const/4 v10, 0x5

    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_2

    .line 3184
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown element reading permissions: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3185
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    .line 3184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3183
    const/4 v10, 0x5

    invoke-static {v10, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_2

    .line 3146
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 1298
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1300
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 1301
    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1302
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1305
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1306
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1307
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1308
    .local v1, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 1311
    .end local v1    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1312
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1310
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1313
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1297
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1349
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1351
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 1352
    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 1353
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1356
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1357
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "domain-verification"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1358
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1359
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v4, :cond_2

    .line 1360
    const-string/jumbo v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Restored IVI for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1361
    const-string/jumbo v6, " status="

    .line 1360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1361
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    .line 1360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1365
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_3
    const-string/jumbo v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1348
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3693
    const/4 v2, 0x0

    .line 3694
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3695
    .local v1, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3696
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    .line 3697
    .local v5, "pkgPrivateFlags":I
    const/4 v6, 0x0

    .line 3699
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    :try_start_0
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3700
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v10, "userId"

    const/4 v11, 0x0

    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3701
    .local v1, "idStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3702
    .local v9, "userId":I
    :goto_0
    const-string/jumbo v10, "true"

    const-string/jumbo v11, "system"

    const/4 v12, 0x0

    invoke-interface {p1, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3703
    const/4 v4, 0x1

    .line 3705
    :cond_0
    if-nez v2, :cond_5

    .line 3707
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3708
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    .line 3707
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3706
    const/4 v11, 0x5

    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3728
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "userId":I
    :cond_1
    :goto_1
    if-eqz v6, :cond_9

    .line 3729
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3731
    .local v3, "outerDepth":I
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_a

    .line 3732
    const/4 v10, 0x3

    if-ne v8, v10, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v3, :cond_a

    .line 3733
    :cond_3
    const/4 v10, 0x3

    if-eq v8, v10, :cond_2

    const/4 v10, 0x4

    if-eq v8, v10, :cond_2

    .line 3737
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3738
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "sigs"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3739
    iget-object v10, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v10, p1, v11}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 3701
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    .restart local v1    # "idStr":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "userId":I
    goto :goto_0

    .line 3709
    :cond_5
    if-nez v9, :cond_6

    .line 3711
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3712
    const-string/jumbo v11, " has bad userId "

    .line 3711
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3712
    const-string/jumbo v11, " at "

    .line 3711
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3713
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    .line 3711
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3710
    const/4 v11, 0x5

    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3722
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "userId":I
    :catch_0
    move-exception v0

    .line 3724
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error in package manager settings: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3725
    const-string/jumbo v11, " at "

    .line 3724
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3725
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    .line 3724
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3723
    const/4 v11, 0x5

    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 3715
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "idStr":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .restart local v9    # "userId":I
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v9, v4, v5}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    if-nez v6, :cond_1

    .line 3718
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3719
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    .line 3718
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    .line 3717
    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 3740
    .end local v1    # "idStr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "su":Lcom/android/server/pm/SharedUserSetting;
    .end local v9    # "userId":I
    .restart local v3    # "outerDepth":I
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_7
    const-string/jumbo v10, "perms"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3741
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    goto/16 :goto_2

    .line 3744
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <shared-user>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3743
    const/4 v11, 0x5

    invoke-static {v11, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3745
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 3749
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3692
    :cond_a
    return-void
.end method

.method private removeUserIdLPw(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1015
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 1016
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1017
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1018
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1022
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_0
    :goto_0
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1014
    return-void

    .line 1020
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newp"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 961
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 962
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 963
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 965
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 970
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    return-void

    .line 967
    :cond_1
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1026
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 1027
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1028
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1029
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setFirstAvailableUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 3822
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_0

    .line 3823
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3821
    :cond_0
    return-void
.end method


# virtual methods
.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)Lcom/android/server/pm/PackageSetting;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "vc"    # I
    .param p11, "pkgFlags"    # I
    .param p12, "pkgPrivateFlags"    # I
    .param p13, "flagsEx"    # I

    .prologue
    .line 486
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 487
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_1

    .line 488
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, p9

    if-ne v2, v0, :cond_0

    .line 489
    return-object v1

    .line 492
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 493
    const/4 v2, 0x0

    return-object v2

    .line 496
    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    .end local v1    # "p":Lcom/android/server/pm/PackageSetting;
    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v1 .. v13}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 499
    .restart local v1    # "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p9

    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 500
    move/from16 v0, p9

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    return-object v1

    .line 504
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageCleanItem;

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2522
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    :cond_0
    return-void
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    .prologue
    const/4 v3, 0x0

    .line 508
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 509
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v0, :cond_1

    .line 510
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v1, p2, :cond_0

    .line 511
    return-object v0

    .line 514
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 515
    return-object v3

    .line 517
    :cond_1
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 518
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 519
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    return-object v0

    .line 523
    :cond_2
    return-object v3
.end method

.method applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 23
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "userId"    # I

    .prologue
    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 2815
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    iget v0, v12, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_0

    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2816
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2818
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    .line 2817
    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 2819
    .local v9, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    .line 2820
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 2821
    .local v4, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v17, Landroid/content/ComponentName;

    .line 2822
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2821
    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 2819
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2828
    .end local v4    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v8    # "i":I
    .end local v9    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v17

    const-string/jumbo v18, "etc/preferred-apps"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2829
    .local v11, "preferredDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2832
    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v17

    if-nez v17, :cond_3

    .line 2833
    const-string/jumbo v17, "PackageSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Directory "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " cannot be read"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    return-void

    .line 2830
    :cond_2
    return-void

    .line 2838
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    aget-object v7, v18, v17

    .line 2839
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ".xml"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2840
    const-string/jumbo v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Non-xml file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " directory, ignoring"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_4
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 2843
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v20

    if-nez v20, :cond_6

    .line 2844
    const-string/jumbo v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Preferred apps file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " cannot be read"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2848
    :cond_6
    sget-boolean v20, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v20, :cond_7

    const-string/jumbo v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Reading default preferred "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_7
    const/4 v14, 0x0

    .line 2851
    .local v14, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2852
    .end local v14    # "str":Ljava/io/FileInputStream;
    .local v15, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 2853
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v10, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2856
    :cond_8
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 2857
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2861
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 2862
    const-string/jumbo v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Preferred apps file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " does not have start tag"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2876
    if-eqz v15, :cond_4

    .line 2878
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 2879
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 2865
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_3
    const-string/jumbo v20, "preferred-activities"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 2866
    const-string/jumbo v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Preferred apps file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 2867
    const-string/jumbo v22, " does not start with \'preferred-activities\'"

    .line 2866
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2876
    if-eqz v15, :cond_4

    .line 2878
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 2879
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 2870
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2876
    if-eqz v15, :cond_4

    .line 2878
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 2879
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 2873
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "str":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 2874
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string/jumbo v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Error reading apps file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2876
    if-eqz v14, :cond_4

    .line 2878
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 2879
    :catch_4
    move-exception v5

    goto/16 :goto_2

    .line 2871
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    .line 2872
    .end local v14    # "str":Ljava/io/FileInputStream;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_9
    const-string/jumbo v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Error reading apps file "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2876
    if-eqz v14, :cond_4

    .line 2878
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 2879
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 2875
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    .line 2876
    :goto_5
    if-eqz v14, :cond_c

    .line 2878
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 2875
    :cond_c
    :goto_6
    throw v17

    .line 2879
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 2812
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "f":Ljava/io/File;
    :cond_d
    return-void

    .line 2875
    .restart local v7    # "f":Ljava/io/File;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v17

    move-object v14, v15

    .end local v15    # "str":Ljava/io/FileInputStream;
    .local v14, "str":Ljava/io/FileInputStream;
    goto :goto_5

    .line 2871
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v14, v15

    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    goto :goto_4

    .line 2873
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v14, v15

    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimPermissionsGrantedLPr(I)Z

    move-result v0

    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    .prologue
    .local p2, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1083
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1084
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_1

    .line 1085
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 1086
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No package known: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_0
    return-object v5

    .line 1090
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v0

    .line 1091
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v0, :cond_3

    .line 1092
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-direct {v0, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1093
    .restart local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1094
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_2

    .line 1095
    const-string/jumbo v2, "PackageManager"

    .line 1096
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Creating new IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1095
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_2
    :goto_0
    return-object v0

    .line 1099
    :cond_3
    invoke-virtual {v0, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Ljava/util/ArrayList;)V

    .line 1100
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_2

    .line 1101
    const-string/jumbo v2, "PackageManager"

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting domains to existing IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1103
    const-string/jumbo v4, " and with domains: "

    .line 1102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1103
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomainsString()Ljava/lang/String;

    move-result-object v4

    .line 1102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1101
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method createNewUserLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I

    .prologue
    .line 3754
    const/4 v6, 0x0

    .line 3755
    .local v6, "curInstalledStatus":Z
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 3756
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 3761
    iget v0, v7, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 3762
    iget v0, v7, Lcom/android/server/pm/PackageSetting;->pkgFlagsEx:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    .line 3763
    :goto_1
    invoke-virtual {v7, v6, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 3766
    iget-object v1, v7, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iget-object v2, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 3767
    iget v0, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3768
    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object v0, p2

    move v4, p3

    .line 3766
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    goto :goto_0

    .line 3761
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    .line 3762
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 3770
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 3771
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3772
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 3753
    return-void
.end method

.method disableSystemPackageLPw(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 428
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 429
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    .line 430
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not an installed package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v6

    .line 433
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 435
    .local v0, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_3

    .line 437
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->isVendorApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 448
    .local v1, "newp":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 449
    const/4 v3, 0x1

    return v3

    .line 438
    .end local v1    # "newp":Lcom/android/server/pm/PackageSetting;
    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 439
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    goto :goto_0

    .line 451
    :cond_3
    return v6
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    .prologue
    .line 4534
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4535
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4536
    const-string/jumbo v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4537
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 4536
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4533
    :cond_0
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PermissionsState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4581
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 4582
    .local v2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4583
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "install permissions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4584
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 4585
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz p3, :cond_1

    .line 4586
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4589
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    const-string/jumbo v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 4591
    const-string/jumbo v3, ", flags="

    .line 4592
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    .line 4591
    invoke-static {v3, v4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4580
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v1    # "permissionState$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V
    .locals 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p7, "date"    # Ljava/util/Date;
    .param p9, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4065
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p3, :cond_9

    .line 4066
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4067
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4068
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4069
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4070
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4071
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4072
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4073
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4074
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 4075
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4076
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 4077
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4078
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4079
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4080
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_2

    .line 4081
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "splt,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4082
    const-string/jumbo v4, "base,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4083
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4084
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 4085
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v12, v4, :cond_2

    .line 4086
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "splt,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4087
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v4, v4, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4088
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v4, v4, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4085
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 4068
    .end local v12    # "i":I
    :cond_0
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 4078
    :cond_1
    const-string/jumbo v4, "?"

    goto/16 :goto_1

    .line 4092
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "user$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 4093
    .local v21, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4094
    const-string/jumbo v4, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4095
    const-string/jumbo v4, "usr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4096
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4097
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4098
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4099
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "I"

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4100
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "B"

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4101
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "S"

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4102
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "l"

    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4103
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4104
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4105
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v13

    .line 4106
    .local v13, "lastDisabledAppCaller":Ljava/lang/String;
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4107
    if-eqz v13, :cond_7

    .end local v13    # "lastDisabledAppCaller":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4108
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_3

    .line 4099
    :cond_3
    const-string/jumbo v4, "i"

    goto :goto_4

    .line 4100
    :cond_4
    const-string/jumbo v4, "b"

    goto :goto_5

    .line 4101
    :cond_5
    const-string/jumbo v4, "s"

    goto :goto_6

    .line 4102
    :cond_6
    const-string/jumbo v4, "L"

    goto :goto_7

    .line 4107
    .restart local v13    # "lastDisabledAppCaller":Ljava/lang/String;
    :cond_7
    const-string/jumbo v13, "?"

    goto :goto_8

    .line 4110
    .end local v13    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    return-void

    .line 4113
    .end local v22    # "user$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "Package ["

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4114
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4115
    const-string/jumbo v4, "] ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4116
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4117
    const-string/jumbo v4, "):"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lcom/android/server/pm/PackageSetting;->frozen:Z

    if-eqz v4, :cond_a

    .line 4120
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  FROZEN!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4123
    :cond_a
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 4124
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  compat name="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4125
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    :cond_b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  userId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4130
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_c

    .line 4131
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  sharedUser="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4133
    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  pkg="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4134
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  codePath="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    if-nez p4, :cond_d

    .line 4136
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  resourcePath="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4137
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  legacyNativeLibraryDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4138
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  primaryCpuAbi="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  secondaryCpuAbi="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4142
    :cond_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  versionCode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4143
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_e

    .line 4144
    const-string/jumbo v4, " targetSdk="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4146
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4147
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_20

    .line 4148
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  versionName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  splits="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4150
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  applicationInfo="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4151
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  flags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4153
    sget-object v5, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4152
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4153
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4154
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v4, :cond_f

    .line 4155
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  privateFlags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4156
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v5, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4155
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4156
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4159
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  pkgFlagsEx="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->pkgFlagsEx:I

    .line 4160
    sget-object v5, Lcom/android/server/pm/Settings;->MTKFLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4159
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4160
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4162
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  dataDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4163
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  supportsScreens=["

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4164
    const/4 v11, 0x1

    .line 4165
    .local v11, "first":Z
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_11

    .line 4166
    if-nez v11, :cond_10

    .line 4167
    const-string/jumbo v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4168
    :cond_10
    const/4 v11, 0x0

    .line 4169
    const-string/jumbo v4, "small"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4171
    :cond_11
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_13

    .line 4172
    if-nez v11, :cond_12

    .line 4173
    const-string/jumbo v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4174
    :cond_12
    const/4 v11, 0x0

    .line 4175
    const-string/jumbo v4, "medium"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4177
    :cond_13
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_15

    .line 4178
    if-nez v11, :cond_14

    .line 4179
    const-string/jumbo v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4180
    :cond_14
    const/4 v11, 0x0

    .line 4181
    const-string/jumbo v4, "large"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4183
    :cond_15
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_17

    .line 4184
    if-nez v11, :cond_16

    .line 4185
    const-string/jumbo v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4186
    :cond_16
    const/4 v11, 0x0

    .line 4187
    const-string/jumbo v4, "xlarge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4189
    :cond_17
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_19

    .line 4190
    if-nez v11, :cond_18

    .line 4191
    const-string/jumbo v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4192
    :cond_18
    const/4 v11, 0x0

    .line 4193
    const-string/jumbo v4, "resizeable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4195
    :cond_19
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_1b

    .line 4196
    if-nez v11, :cond_1a

    .line 4197
    const-string/jumbo v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4198
    :cond_1a
    const/4 v11, 0x0

    .line 4199
    const-string/jumbo v4, "anyDensity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4201
    :cond_1b
    const-string/jumbo v4, "]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4202
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    .line 4203
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  libraries:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4204
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_1d

    .line 4205
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4204
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 4114
    .end local v11    # "first":Z
    .end local v12    # "i":I
    :cond_1c
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    goto/16 :goto_9

    .line 4208
    .restart local v11    # "first":Z
    :cond_1d
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1e

    .line 4209
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  usesLibraries:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4210
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_b
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_1e

    .line 4211
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4210
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 4214
    .end local v12    # "i":I
    :cond_1e
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v4, :cond_1f

    .line 4215
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1f

    .line 4216
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  usesOptionalLibraries:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_c
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_1f

    .line 4218
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4219
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 4222
    .end local v12    # "i":I
    :cond_1f
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 4223
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_20

    .line 4224
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  usesLibraryFiles:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_d
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v4, v4

    if-ge v12, v4, :cond_20

    .line 4226
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v4, v4, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 4230
    .end local v11    # "first":Z
    .end local v12    # "i":I
    :cond_20
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  timeStamp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4231
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4232
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4233
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  firstInstallTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4234
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4235
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4236
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  lastUpdateTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4237
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4238
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4239
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 4240
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  installerPackageName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4241
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4243
    :cond_21
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v4, :cond_22

    .line 4244
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  volumeUuid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4245
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4247
    :cond_22
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  signatures="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4248
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  installPermissionsFixed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4249
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4250
    const-string/jumbo v4, " installStatus="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->installStatus:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4251
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  pkgFlags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v5, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4252
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4254
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_28

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v4, :cond_28

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_28

    .line 4255
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 4256
    .local v17, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  declared permissions:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4257
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_28

    .line 4258
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    .line 4259
    .local v14, "perm":Landroid/content/pm/PackageParser$Permission;
    if-eqz p4, :cond_23

    .line 4260
    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 4263
    :cond_23
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4264
    const-string/jumbo v4, ": prot="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4265
    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4266
    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_24

    .line 4267
    const-string/jumbo v4, ", COSTS_MONEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4269
    :cond_24
    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_25

    .line 4270
    const-string/jumbo v4, ", HIDDEN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4272
    :cond_25
    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_26

    .line 4273
    const-string/jumbo v4, ", INSTALLED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4275
    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4257
    :cond_27
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 4279
    .end local v12    # "i":I
    .end local v14    # "perm":Landroid/content/pm/PackageParser$Permission;
    .end local v17    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    :cond_28
    if-nez p4, :cond_29

    if-eqz p9, :cond_2c

    :cond_29
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v4, :cond_2c

    .line 4280
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2c

    .line 4281
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 4282
    .local v18, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  requested permissions:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4283
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_2c

    .line 4284
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4285
    .local v15, "perm":Ljava/lang/String;
    if-eqz p4, :cond_2a

    .line 4286
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 4289
    :cond_2a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4283
    :cond_2b
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 4293
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2c
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_2d

    if-eqz p4, :cond_32

    .line 4294
    :cond_2d
    :goto_10
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v16

    .line 4295
    .local v16, "permissionsState":Lcom/android/server/pm/PermissionsState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V

    .line 4298
    .end local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_2e
    invoke-interface/range {p8 .. p8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "user$iterator":Ljava/util/Iterator;
    :cond_2f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 4299
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  User "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4300
    const-string/jumbo v4, " installed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4301
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4302
    const-string/jumbo v4, " hidden="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4303
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4304
    const-string/jumbo v4, " stopped="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4305
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4306
    const-string/jumbo v4, " notLaunched="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4307
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4308
    const-string/jumbo v4, " enabled="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4309
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4310
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v13

    .line 4311
    .restart local v13    # "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v13, :cond_30

    .line 4312
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    lastDisabledCaller: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4313
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4316
    :cond_30
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v4, :cond_31

    .line 4317
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v16

    .line 4318
    .restart local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4320
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    .line 4319
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move/from16 v9, p9

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 4323
    .end local v16    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_31
    if-nez p4, :cond_2f

    .line 4324
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v10

    .line 4325
    .local v10, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v10, :cond_33

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_33

    .line 4326
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    disabledComponents:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4327
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "s$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 4328
    .local v19, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 4293
    .end local v10    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v19    # "s":Ljava/lang/String;
    .end local v20    # "s$iterator":Ljava/util/Iterator;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    .end local v22    # "user$iterator":Ljava/util/Iterator;
    :cond_32
    if-eqz p9, :cond_2e

    goto/16 :goto_10

    .line 4331
    .restart local v10    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v21    # "user":Landroid/content/pm/UserInfo;
    .restart local v22    # "user$iterator":Ljava/util/Iterator;
    :cond_33
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v10

    .line 4332
    if-eqz v10, :cond_2f

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_2f

    .line 4333
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    enabledComponents:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4334
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "s$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 4335
    .restart local v19    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4064
    .end local v10    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v19    # "s":Ljava/lang/String;
    .end local v20    # "s$iterator":Ljava/util/Iterator;
    .end local v21    # "user":Landroid/content/pm/UserInfo;
    :cond_34
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;Z)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4344
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4345
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 4346
    .local v8, "date":Ljava/util/Date;
    const/4 v13, 0x0

    .line 4347
    .local v13, "printedSomething":Z
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v9

    .line 4348
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "ps$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 4349
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_1

    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4353
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 4354
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4358
    :cond_2
    if-nez p5, :cond_3

    if-eqz p2, :cond_3

    .line 4359
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 4362
    :cond_3
    if-nez p5, :cond_4

    if-eqz v13, :cond_6

    .line 4368
    :cond_4
    :goto_2
    const-string/jumbo v3, "  "

    if-eqz p5, :cond_8

    const-string/jumbo v4, "pkg"

    .line 4369
    :goto_3
    if-eqz p2, :cond_9

    const/4 v10, 0x1

    :goto_4
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 4368
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    goto :goto_0

    .line 4350
    :cond_5
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4363
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4364
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4365
    :cond_7
    const-string/jumbo v1, "Packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4366
    const/4 v13, 0x1

    goto :goto_2

    .line 4368
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 4369
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 4372
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a
    const/4 v13, 0x0

    .line 4373
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_12

    if-nez p3, :cond_12

    .line 4374
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "e$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 4375
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_c

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4379
    :cond_c
    :goto_6
    if-nez p5, :cond_10

    .line 4380
    if-nez v13, :cond_e

    .line 4381
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4382
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4383
    :cond_d
    const-string/jumbo v1, "Renamed packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4384
    const/4 v13, 0x1

    .line 4386
    :cond_e
    const-string/jumbo v1, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4390
    :goto_7
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4391
    if-eqz p5, :cond_11

    const-string/jumbo v1, " -> "

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4392
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 4376
    :cond_f
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    .line 4388
    :cond_10
    const-string/jumbo v1, "ren,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 4391
    :cond_11
    const-string/jumbo v1, ","

    goto :goto_8

    .line 4396
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "e$iterator":Ljava/util/Iterator;
    :cond_12
    const/4 v13, 0x0

    .line 4397
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1b

    if-nez p3, :cond_1b

    .line 4398
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_13
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 4399
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_14

    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4403
    :cond_14
    :goto_a
    if-nez p5, :cond_15

    if-eqz v13, :cond_17

    .line 4409
    :cond_15
    :goto_b
    const-string/jumbo v3, "  "

    if-eqz p5, :cond_19

    const-string/jumbo v4, "dis"

    .line 4410
    :goto_c
    if-eqz p2, :cond_1a

    const/4 v10, 0x1

    :goto_d
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 4409
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    goto :goto_9

    .line 4400
    :cond_16
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_a

    .line 4404
    :cond_17
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4405
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4406
    :cond_18
    const-string/jumbo v1, "Hidden system packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4407
    const/4 v13, 0x1

    goto :goto_b

    .line 4409
    :cond_19
    const/4 v4, 0x0

    goto :goto_c

    .line 4410
    :cond_1a
    const/4 v10, 0x0

    goto :goto_d

    .line 4343
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1b
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 4417
    const/4 v2, 0x0

    .line 4418
    .local v2, "printedSomething":Z
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 4419
    .local v0, "p":Lcom/android/server/pm/BasePermission;
    if-eqz p2, :cond_1

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4422
    :cond_1
    if-eqz p3, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4425
    :cond_2
    if-nez v2, :cond_4

    .line 4426
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4427
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4428
    :cond_3
    const-string/jumbo v3, "Permissions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4429
    const/4 v2, 0x1

    .line 4431
    :cond_4
    const-string/jumbo v3, "  Permission ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "] ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4432
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4433
    const-string/jumbo v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4434
    const-string/jumbo v3, "    sourcePackage="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4435
    const-string/jumbo v3, "    uid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/pm/BasePermission;->uid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4436
    const-string/jumbo v3, " gids="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4437
    invoke-virtual {v0, v5}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v3

    .line 4436
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4438
    const-string/jumbo v3, " type="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/pm/BasePermission;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4439
    const-string/jumbo v3, " prot="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4440
    iget v3, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4441
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_6

    .line 4442
    const-string/jumbo v3, "    perm="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4443
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 4444
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 4445
    :cond_5
    const-string/jumbo v3, "    flags=0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4448
    :cond_6
    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-eqz v3, :cond_7

    .line 4449
    const-string/jumbo v3, "    packageSetting="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4451
    :cond_7
    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4452
    const-string/jumbo v3, "    enforced="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4453
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4416
    .end local v0    # "p":Lcom/android/server/pm/BasePermission;
    :cond_8
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 4506
    const-string/jumbo v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4507
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4505
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4543
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p5, :cond_3

    .line 4544
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "runtime permissions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4545
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 4546
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz p3, :cond_2

    .line 4547
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4550
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4551
    const-string/jumbo v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 4552
    const-string/jumbo v2, ", flags="

    .line 4553
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    .line 4552
    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4542
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v1    # "permissionState$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;Z)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4460
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 4461
    .local v12, "printedSomething":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "su$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/SharedUserSetting;

    .line 4462
    .local v13, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    if-ne v13, v3, :cond_0

    .line 4465
    :cond_1
    if-eqz p3, :cond_2

    .line 4466
    invoke-virtual {v13}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4469
    :cond_2
    if-nez p5, :cond_7

    .line 4470
    if-nez v12, :cond_4

    .line 4471
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4472
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4473
    :cond_3
    const-string/jumbo v3, "Shared users:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4474
    const/4 v12, 0x1

    .line 4476
    :cond_4
    const-string/jumbo v3, "  SharedUser ["

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4477
    iget-object v3, v13, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4478
    const-string/jumbo v3, "] ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4479
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4480
    const-string/jumbo v3, "):"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4482
    const-string/jumbo v11, "    "

    .line 4483
    .local v11, "prefix":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "userId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v13, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4485
    invoke-virtual {v13}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v10

    .line 4486
    .local v10, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v10}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V

    .line 4488
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v17

    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v16, v3

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget v15, v17, v16

    .line 4489
    .local v15, "userId":I
    invoke-virtual {v10, v15}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v9

    .line 4490
    .local v9, "gids":[I
    invoke-virtual {v10, v15}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v7

    .line 4492
    .local v7, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4488
    :goto_2
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_1

    .line 4493
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "User "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4496
    if-eqz p2, :cond_6

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    .line 4495
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    goto :goto_2

    .line 4496
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 4500
    .end local v7    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v9    # "gids":[I
    .end local v10    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v15    # "userId":I
    :cond_7
    const-string/jumbo v3, "suid,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v13, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v13, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4459
    .end local v13    # "su":Lcom/android/server/pm/SharedUserSetting;
    :cond_8
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 4040
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4041
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4042
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4043
    .local v2, "volumeUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4044
    .local v1, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4045
    const-string/jumbo v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4052
    const-string/jumbo v3, "sdkVersion"

    iget v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4053
    const-string/jumbo v3, "databaseVersion"

    iget v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4054
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4055
    const-string/jumbo v3, "fingerprint"

    iget-object v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4056
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4057
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4041
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4046
    :cond_0
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4047
    const-string/jumbo v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4049
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4059
    .end local v1    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v2    # "volumeUuid":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4039
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1056
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .end local v0    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    .line 1058
    .restart local v0    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1060
    :cond_0
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1047
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1048
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .end local v0    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    .line 1049
    .restart local v0    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1051
    :cond_0
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1038
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 1040
    .restart local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1042
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 456
    .local v15, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v15, :cond_0

    .line 457
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v1, 0x0

    return-object v1

    .line 461
    :cond_0
    iget-object v1, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_1

    iget-object v1, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 465
    :cond_1
    iget-object v3, v15, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v5, v15, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 466
    iget-object v6, v15, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 467
    iget-object v8, v15, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v9, v15, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 468
    iget v10, v15, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v11, v15, Lcom/android/server/pm/PackageSetting;->versionCode:I

    iget v12, v15, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v13, v15, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v14, v15, Lcom/android/server/pm/PackageSetting;->pkgFlagsEx:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 465
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)Lcom/android/server/pm/PackageSetting;

    move-result-object v16

    .line 469
    .local v16, "ret":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    return-object v16
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1241
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_0

    .line 1242
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    .end local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-direct {v0}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    .line 1243
    .restart local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 1244
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    :cond_0
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAllUsers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3970
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3972
    .local v0, "id":J
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3976
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3972
    return-object v3

    .line 3973
    :catch_0
    move-exception v2

    .line 3976
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3978
    const/4 v3, 0x0

    return-object v3

    .line 3975
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    .line 3976
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3975
    throw v3
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3916
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 3917
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 3918
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3920
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 3924
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3925
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3926
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    .line 3927
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3929
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 3930
    .local v0, "classNameStr":Ljava/lang/String;
    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method getDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1192
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3858
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 3859
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3908
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 3909
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 3910
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3912
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1070
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1071
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1072
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1073
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    return-object v4

    .line 1077
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1111
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1112
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1113
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1117
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v2

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1147
    if-nez p1, :cond_0

    .line 1148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 1150
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ps$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1152
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v0

    .line 1153
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1154
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1157
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1159
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return-object v3
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getListOfIncompleteInstallPackagesLPr()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2507
    new-instance v1, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2508
    .local v1, "kList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2509
    .local v0, "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2510
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2511
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2512
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2513
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 2514
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2517
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    return-object v4
.end method

.method getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/UserHandle;Z)Lcom/android/server/pm/PackageSetting;
    .locals 19
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "origPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p8, "primaryCpuAbi"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p10, "pkgFlags"    # I
    .param p11, "pkgPrivateFlags"    # I
    .param p12, "flagsEx"    # I
    .param p13, "user"    # Landroid/os/UserHandle;
    .param p14, "add"    # Z

    .prologue
    .line 374
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 377
    .local v2, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 378
    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    .line 375
    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v18

    .line 379
    .local v18, "p":Lcom/android/server/pm/PackageSetting;
    return-object v18
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "pkgPrivateFlags"    # I
    .param p4, "create"    # Z

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 405
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    .line 406
    if-nez p4, :cond_0

    .line 407
    return-object v2

    .line 409
    :cond_0
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 410
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 411
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_1
    return-object v0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1005
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 1006
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1007
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1008
    .local v1, "index":I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1010
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .prologue
    .line 3848
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    .line 3849
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 3851
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 3854
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3986
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3987
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3988
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3989
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3990
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3991
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3988
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3994
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    return-object v1
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 7
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 751
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 754
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 755
    .local v3, "volumeUuid":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "codePath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "resourcePath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 759
    .local v1, "legacyNativeLibraryPath":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 760
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Volume for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 761
    const-string/jumbo v6, " changing from "

    .line 760
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 761
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 760
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 761
    const-string/jumbo v6, " to "

    .line 760
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iput-object v3, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 765
    :cond_0
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 766
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Code path for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 767
    const-string/jumbo v6, " changing from "

    .line 766
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 767
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 766
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 767
    const-string/jumbo v6, " to "

    .line 766
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 769
    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 772
    :cond_1
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 773
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Resource path for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 774
    const-string/jumbo v6, " changing from "

    .line 773
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 774
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 773
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 774
    const-string/jumbo v6, " to "

    .line 773
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 776
    iput-object v2, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 779
    :cond_2
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 780
    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 784
    :cond_3
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 785
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 786
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    .line 788
    iget v4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-eq v4, v5, :cond_4

    .line 789
    iget v4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v4, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    .line 792
    :cond_4
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_5

    .line 793
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 796
    :cond_5
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    if-eq v4, v5, :cond_6

    .line 797
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v4, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 800
    :cond_6
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flagsEx:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgFlagsEx:I

    if-eq v4, v5, :cond_7

    .line 801
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flagsEx:I

    iput v4, p1, Lcom/android/server/pm/PackageSetting;->pkgFlagsEx:I

    .line 805
    :cond_7
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_8

    .line 806
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 808
    :cond_8
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    .line 750
    return-void
.end method

.method isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userId"    # I

    .prologue
    .line 746
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 9
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3867
    and-int/lit16 v3, p2, 0x200

    if-eqz v3, :cond_0

    .line 3868
    return v7

    .line 3870
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 3871
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 3872
    .local v0, "packageSettings":Lcom/android/server/pm/PackageSetting;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v3, :cond_1

    .line 3873
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEnabledLock - packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3874
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 3873
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3874
    const-string/jumbo v5, " componentName = "

    .line 3873
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3874
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 3873
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enabledComponents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3876
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/Settings;->compToString(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v5

    .line 3875
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disabledComponents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3878
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/Settings;->compToString(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v5

    .line 3877
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    :cond_1
    if-nez v0, :cond_2

    .line 3881
    return v6

    .line 3883
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 3884
    .local v2, "ustate":Landroid/content/pm/PackageUserState;
    const v3, 0x8000

    and-int/2addr v3, p2

    if-eqz v3, :cond_3

    .line 3885
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v3, v8, :cond_3

    .line 3886
    return v7

    .line 3889
    :cond_3
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 3890
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 3894
    :cond_4
    :goto_0
    return v6

    .line 3891
    :cond_5
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v3, v8, :cond_4

    .line 3892
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_7

    .line 3896
    :cond_6
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_8

    .line 3897
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 3896
    if-eqz v3, :cond_8

    .line 3898
    return v7

    .line 3893
    :cond_7
    iget v3, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v3, :cond_6

    goto :goto_0

    .line 3900
    :cond_8
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_9

    .line 3901
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 3900
    if-eqz v3, :cond_9

    .line 3902
    return v6

    .line 3904
    :cond_9
    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    return v3
.end method

.method onDefaultRuntimePermissionsGrantedLPr(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 1234
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 1
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    return-void
.end method

.method peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method pruneSharedUsersLPw()V
    .locals 7

    .prologue
    .line 527
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v3, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 529
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 530
    .local v4, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 531
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v4    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 535
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 526
    :cond_3
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 1683
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 1685
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1687
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 1688
    if-ne v5, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_4

    .line 1689
    :cond_1
    if-eq v5, v9, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 1693
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1694
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "domain-verification"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1695
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1696
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1697
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1698
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2

    .line 1700
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1701
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_0

    .line 1702
    const-string/jumbo v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restored IVI for existing app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1703
    const-string/jumbo v8, " status="

    .line 1702
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1703
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v8

    .line 1702
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1706
    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_0

    .line 1708
    const-string/jumbo v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restored IVI for pending app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1709
    const-string/jumbo v8, " status="

    .line 1708
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1709
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v8

    .line 1708
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1714
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1715
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1714
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1713
    const/4 v7, 0x5

    invoke-static {v7, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1716
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1682
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1373
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1375
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1376
    if-ne v4, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 1377
    :cond_1
    if-eq v4, v7, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1380
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1381
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "default-browser"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1382
    const-string/jumbo v5, "packageName"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1383
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1385
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under default-apps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1386
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1385
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1387
    .local v0, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1388
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1372
    .end local v0    # "msg":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1890
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1892
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_9

    .line 1893
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 1894
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_9

    .line 1895
    :cond_1
    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 1896
    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 1899
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1900
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1901
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1903
    .local v5, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1904
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_2

    .line 1905
    const-string/jumbo v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown permission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1910
    :cond_2
    const-string/jumbo v9, "granted"

    const/4 v10, 0x0

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1911
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1912
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1914
    :goto_1
    const-string/jumbo v9, "flags"

    const/4 v10, 0x0

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1915
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1916
    const/16 v9, 0x10

    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1918
    .local v1, "flags":I
    :goto_2
    if-eqz v3, :cond_6

    .line 1919
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/BasePermission;)I

    move-result v9

    .line 1920
    const/4 v10, -0x1

    .line 1919
    if-ne v9, v10, :cond_5

    .line 1921
    const-string/jumbo v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1911
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    .local v3, "granted":Z
    goto :goto_1

    .line 1916
    .end local v3    # "granted":Z
    .restart local v2    # "flagsStr":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "flags":I
    goto :goto_2

    .line 1924
    :cond_5
    const/4 v9, -0x1

    .line 1925
    const/16 v10, 0xff

    .line 1924
    invoke-virtual {p2, v0, v9, v10, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto/16 :goto_0

    .line 1928
    :cond_6
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I

    move-result v9

    .line 1929
    const/4 v10, -0x1

    .line 1928
    if-ne v9, v10, :cond_7

    .line 1930
    const-string/jumbo v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1933
    :cond_7
    const/4 v9, -0x1

    .line 1934
    const/16 v10, 0xff

    .line 1933
    invoke-virtual {p2, v0, v9, v10, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto/16 :goto_0

    .line 1938
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v4    # "grantedStr":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_8
    const-string/jumbo v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <permissions>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1939
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1938
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1889
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method readLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;IZ)Z
    .locals 54
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "sdkVersion"    # I
    .param p4, "onlyCore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 2528
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v44, 0x0

    .line 2529
    .local v44, "str":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2531
    :try_start_0
    new-instance v45, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2532
    .end local v44    # "str":Ljava/io/FileInputStream;
    .local v45, "str":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Reading from backup settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    const-string/jumbo v3, "Need to read from backup settings file"

    .line 2533
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2539
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 2539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    move-object/from16 v44, v45

    .line 2548
    .end local v45    # "str":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 2553
    if-nez v44, :cond_4

    .line 2554
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2557
    const-string/jumbo v3, "No settings file; creating initial state"

    .line 2556
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2560
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2561
    const-string/jumbo v3, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2562
    const/4 v3, 0x0

    .line 2709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v52

    .line 2710
    .local v52, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v52, :cond_2

    .line 2711
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Create version info if not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2713
    const-string/jumbo v4, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2562
    :cond_2
    return v3

    .line 2564
    .end local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_3
    :try_start_3
    new-instance v45, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v45    # "str":Ljava/io/FileInputStream;
    move-object/from16 v44, v45

    .line 2566
    .end local v45    # "str":Ljava/io/FileInputStream;
    :cond_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v42

    .line 2567
    .local v42, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2570
    :cond_5
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v47

    .local v47, "type":I
    const/4 v3, 0x2

    move/from16 v0, v47

    if-eq v0, v3, :cond_6

    .line 2571
    const/4 v3, 0x1

    move/from16 v0, v47

    if-ne v0, v3, :cond_5

    .line 2575
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, v47

    if-eq v0, v3, :cond_8

    .line 2576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No start tag found in settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    const-string/jumbo v3, "No start tag found in package manager settings"

    .line 2577
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2579
    const-string/jumbo v3, "PackageManager"

    .line 2580
    const-string/jumbo v4, "No start tag found in package manager settings"

    .line 2579
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2583
    const-string/jumbo v3, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2584
    const/4 v3, 0x0

    .line 2709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v52

    .line 2710
    .restart local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v52, :cond_7

    .line 2711
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Create version info if not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2713
    const-string/jumbo v4, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2584
    :cond_7
    return v3

    .line 2587
    .end local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_8
    :try_start_4
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v40

    .line 2588
    .local v40, "outerDepth":I
    :cond_9
    :goto_1
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v47

    const/4 v3, 0x1

    move/from16 v0, v47

    if-eq v0, v3, :cond_21

    .line 2589
    const/4 v3, 0x3

    move/from16 v0, v47

    if-ne v0, v3, :cond_a

    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v40

    if-le v3, v0, :cond_21

    .line 2590
    :cond_a
    const/4 v3, 0x3

    move/from16 v0, v47

    if-eq v0, v3, :cond_9

    const/4 v3, 0x4

    move/from16 v0, v47

    if-eq v0, v3, :cond_9

    .line 2594
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v46

    .line 2595
    .local v46, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "package"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2596
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2699
    .end local v40    # "outerDepth":I
    .end local v42    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v46    # "tagName":Ljava/lang/String;
    .end local v47    # "type":I
    :catch_0
    move-exception v29

    .line 2700
    .local v29, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error reading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2702
    const-string/jumbo v3, "PackageManager"

    const-string/jumbo v4, "Error reading package manager settings"

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v52

    .line 2710
    .restart local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v52, :cond_b

    .line 2711
    const-string/jumbo v3, "PackageManager"

    const-string/jumbo v4, "Create version info if not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2713
    const-string/jumbo v3, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2734
    .end local v29    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2736
    .local v20, "N":I
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_3
    move/from16 v0, v32

    move/from16 v1, v20

    if-ge v0, v1, :cond_25

    .line 2737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/pm/PendingPackage;

    .line 2738
    .local v43, "pp":Lcom/android/server/pm/PendingPackage;
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v34

    .line 2739
    .local v34, "idObj":Ljava/lang/Object;
    if-eqz v34, :cond_23

    move-object/from16 v0, v34

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_23

    .line 2741
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    move-object/from16 v0, v43

    iget-object v6, v0, Lcom/android/server/pm/PendingPackage;->realName:Ljava/lang/String;

    move-object/from16 v7, v34

    .line 2742
    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, v43

    iget-object v8, v0, Lcom/android/server/pm/PendingPackage;->codePath:Ljava/io/File;

    move-object/from16 v0, v43

    iget-object v9, v0, Lcom/android/server/pm/PendingPackage;->resourcePath:Ljava/io/File;

    .line 2743
    move-object/from16 v0, v43

    iget-object v10, v0, Lcom/android/server/pm/PendingPackage;->legacyNativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, v43

    iget-object v11, v0, Lcom/android/server/pm/PendingPackage;->primaryCpuAbiString:Ljava/lang/String;

    .line 2744
    move-object/from16 v0, v43

    iget-object v12, v0, Lcom/android/server/pm/PendingPackage;->secondaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, v43

    iget v13, v0, Lcom/android/server/pm/PendingPackage;->versionCode:I

    .line 2745
    move-object/from16 v0, v43

    iget v14, v0, Lcom/android/server/pm/PendingPackage;->pkgFlags:I

    move-object/from16 v0, v43

    iget v15, v0, Lcom/android/server/pm/PendingPackage;->pkgPrivateFlags:I

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/pm/PendingPackage;->pkgFlagsEx:I

    move/from16 v16, v0

    .line 2741
    const/4 v5, 0x0

    .line 2746
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v3, p0

    .line 2741
    invoke-direct/range {v3 .. v19}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v41

    .line 2747
    .local v41, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v41, :cond_22

    .line 2749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create application package for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2748
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2736
    .end local v41    # "p":Lcom/android/server/pm/PackageSetting;
    :goto_4
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_3

    .line 2597
    .end local v20    # "N":I
    .end local v32    # "i":I
    .end local v34    # "idObj":Ljava/lang/Object;
    .end local v43    # "pp":Lcom/android/server/pm/PendingPackage;
    .end local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v40    # "outerDepth":I
    .restart local v42    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v46    # "tagName":Ljava/lang/String;
    .restart local v47    # "type":I
    :cond_c
    :try_start_6
    const-string/jumbo v3, "permissions"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 2703
    .end local v40    # "outerDepth":I
    .end local v42    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v46    # "tagName":Ljava/lang/String;
    .end local v47    # "type":I
    :catch_1
    move-exception v26

    .line 2704
    .local v26, "e":Ljava/io/IOException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error reading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2706
    const-string/jumbo v3, "PackageManager"

    const-string/jumbo v4, "Error reading package manager settings"

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v52

    .line 2710
    .restart local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v52, :cond_b

    .line 2711
    const-string/jumbo v3, "PackageManager"

    const-string/jumbo v4, "Create version info if not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2713
    const-string/jumbo v3, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    goto/16 :goto_2

    .line 2599
    .end local v26    # "e":Ljava/io/IOException;
    .end local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v40    # "outerDepth":I
    .restart local v42    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v46    # "tagName":Ljava/lang/String;
    .restart local v47    # "type":I
    :cond_d
    :try_start_8
    const-string/jumbo v3, "permission-trees"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2707
    .end local v40    # "outerDepth":I
    .end local v42    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v46    # "tagName":Ljava/lang/String;
    .end local v47    # "type":I
    :catchall_0
    move-exception v3

    .line 2709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v52

    .line 2710
    .restart local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v52, :cond_e

    .line 2711
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Create version info if not exist."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2713
    const-string/jumbo v4, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2707
    :cond_e
    throw v3

    .line 2601
    .end local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v40    # "outerDepth":I
    .restart local v42    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v46    # "tagName":Ljava/lang/String;
    .restart local v47    # "type":I
    :cond_f
    :try_start_9
    const-string/jumbo v3, "shared-user"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2602
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 2603
    :cond_10
    const-string/jumbo v3, "preferred-packages"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2605
    const-string/jumbo v3, "preferred-activities"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2608
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_1

    .line 2609
    :cond_11
    const-string/jumbo v3, "persistent-preferred-activities"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2612
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_1

    .line 2613
    :cond_12
    const-string/jumbo v3, "crossProfile-intent-filters"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2616
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_1

    .line 2617
    :cond_13
    const-string/jumbo v3, "default-browser"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2618
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_1

    .line 2619
    :cond_14
    const-string/jumbo v3, "updated-package"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2620
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 2621
    :cond_15
    const-string/jumbo v3, "cleaning-package"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2622
    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2623
    .local v37, "name":Ljava/lang/String;
    const-string/jumbo v3, "user"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 2624
    .local v51, "userStr":Ljava/lang/String;
    const-string/jumbo v3, "code"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v22

    .line 2625
    .local v22, "codeStr":Ljava/lang/String;
    if-eqz v37, :cond_9

    .line 2626
    const/16 v50, 0x0

    .line 2627
    .local v50, "userId":I
    const/16 v21, 0x1

    .line 2629
    .local v21, "andCode":Z
    if-eqz v51, :cond_16

    .line 2630
    :try_start_a
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v50

    .line 2634
    :cond_16
    :goto_5
    if-eqz v22, :cond_17

    .line 2635
    :try_start_b
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 2637
    .end local v21    # "andCode":Z
    :cond_17
    new-instance v3, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v50

    move-object/from16 v1, v37

    move/from16 v2, v21

    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    goto/16 :goto_1

    .line 2632
    .restart local v21    # "andCode":Z
    :catch_2
    move-exception v28

    .local v28, "e":Ljava/lang/NumberFormatException;
    goto :goto_5

    .line 2639
    .end local v21    # "andCode":Z
    .end local v22    # "codeStr":Ljava/lang/String;
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    .end local v37    # "name":Ljava/lang/String;
    .end local v50    # "userId":I
    .end local v51    # "userStr":Ljava/lang/String;
    :cond_18
    const-string/jumbo v3, "renamed-package"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2640
    const-string/jumbo v3, "new"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2641
    .local v38, "nname":Ljava/lang/String;
    const-string/jumbo v3, "old"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2642
    .local v39, "oname":Ljava/lang/String;
    if-eqz v38, :cond_9

    if-eqz v39, :cond_9

    .line 2643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2645
    .end local v38    # "nname":Ljava/lang/String;
    .end local v39    # "oname":Ljava/lang/String;
    :cond_19
    const-string/jumbo v3, "restored-ivi"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2646
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 2647
    :cond_1a
    const-string/jumbo v3, "last-platform-version"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2650
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 2649
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v35

    .line 2652
    .local v35, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "primary_physical"

    .line 2651
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v31

    .line 2654
    .local v31, "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "internal"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v35

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2655
    const-string/jumbo v3, "external"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2657
    const-string/jumbo v3, "fingerprint"

    move-object/from16 v0, v42

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2656
    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_1

    .line 2659
    .end local v31    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v35    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_1b
    const-string/jumbo v3, "database-version"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2662
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 2661
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v35

    .line 2664
    .restart local v35    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "primary_physical"

    .line 2663
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v31

    .line 2666
    .restart local v31    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "internal"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v35

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2667
    const-string/jumbo v3, "external"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    goto/16 :goto_1

    .line 2669
    .end local v31    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v35    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_1c
    const-string/jumbo v3, "verifier"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2670
    const-string/jumbo v3, "device"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v23

    .line 2672
    .local v23, "deviceIdentity":Ljava/lang/String;
    :try_start_c
    invoke-static/range {v23 .. v23}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 2673
    :catch_3
    move-exception v27

    .line 2674
    .local v27, "e":Ljava/lang/IllegalArgumentException;
    :try_start_d
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Discard invalid verifier device id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2675
    invoke-virtual/range {v27 .. v27}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 2674
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2677
    .end local v23    # "deviceIdentity":Ljava/lang/String;
    .end local v27    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1d
    const-string/jumbo v3, "read-external-storage"

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2678
    const-string/jumbo v3, "enforcement"

    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2679
    .local v30, "enforcement":Ljava/lang/String;
    const-string/jumbo v3, "1"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 2680
    .end local v30    # "enforcement":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v3, "keyset-settings"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v0, v42

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto/16 :goto_1

    .line 2682
    :cond_1f
    const-string/jumbo v3, "version"

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2684
    const-string/jumbo v3, "volumeUuid"

    .line 2683
    move-object/from16 v0, v42

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2685
    .local v53, "volumeUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v52

    .line 2686
    .restart local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "sdkVersion"

    move-object/from16 v0, v42

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v52

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 2687
    const-string/jumbo v3, "sdkVersion"

    move-object/from16 v0, v42

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v52

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 2688
    const-string/jumbo v3, "fingerprint"

    move-object/from16 v0, v42

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v52

    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_1

    .line 2691
    .end local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v53    # "volumeUuid":Ljava/lang/String;
    :cond_20
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2692
    invoke-interface/range {v42 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2691
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    invoke-static/range {v42 .. v42}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 2697
    .end local v46    # "tagName":Ljava/lang/String;
    :cond_21
    invoke-virtual/range {v44 .. v44}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v52

    .line 2710
    .restart local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v52, :cond_b

    .line 2711
    const-string/jumbo v3, "PackageManager"

    const-string/jumbo v4, "Create version info if not exist."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2713
    const-string/jumbo v3, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    goto/16 :goto_2

    .line 2752
    .end local v40    # "outerDepth":I
    .end local v42    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v47    # "type":I
    .restart local v20    # "N":I
    .restart local v32    # "i":I
    .restart local v34    # "idObj":Ljava/lang/Object;
    .restart local v41    # "p":Lcom/android/server/pm/PackageSetting;
    .restart local v43    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_22
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_4

    .line 2753
    .end local v41    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_23
    if-eqz v34, :cond_24

    .line 2754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2755
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    .line 2754
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2755
    const-string/jumbo v4, " that is not a shared uid\n"

    .line 2754
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 2756
    .local v36, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    const/4 v3, 0x6

    move-object/from16 v0, v36

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 2759
    .end local v36    # "msg":Ljava/lang/String;
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2760
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    .line 2759
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2760
    const-string/jumbo v4, " that is not defined\n"

    .line 2759
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 2761
    .restart local v36    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    const/4 v3, 0x6

    move-object/from16 v0, v36

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 2765
    .end local v34    # "idObj":Ljava/lang/Object;
    .end local v36    # "msg":Ljava/lang/String;
    .end local v43    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_26

    .line 2768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 2767
    if-eqz v3, :cond_2a

    .line 2770
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 2771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2774
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 2785
    :cond_27
    :goto_6
    if-nez p2, :cond_2c

    .line 2786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 2797
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 2798
    .local v24, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_29
    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2799
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PackageSetting;

    .line 2800
    .local v25, "disabledPs":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v33

    .line 2801
    .local v33, "id":Ljava/lang/Object;
    if-eqz v33, :cond_29

    move-object/from16 v0, v33

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_29

    .line 2802
    check-cast v33, Lcom/android/server/pm/SharedUserSetting;

    .end local v33    # "id":Ljava/lang/Object;
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    goto :goto_7

    .line 2776
    .end local v24    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v25    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_2a
    if-nez p2, :cond_2b

    .line 2777
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_6

    .line 2779
    :cond_2b
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .local v49, "user$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/UserInfo;

    .line 2780
    .local v48, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v48

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_8

    .line 2788
    .end local v48    # "user":Landroid/content/pm/UserInfo;
    .end local v49    # "user$iterator":Ljava/util/Iterator;
    :cond_2c
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "user$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/UserInfo;

    .line 2789
    .restart local v48    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    move-object/from16 v0, v48

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    goto :goto_9

    .line 2806
    .end local v48    # "user":Landroid/content/pm/UserInfo;
    .end local v49    # "user$iterator":Ljava/util/Iterator;
    .restart local v24    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Read completed successfully: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " packages, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 2806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2807
    const-string/jumbo v4, " shared uids\n"

    .line 2806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    const/4 v3, 0x1

    return v3

    .line 2543
    .end local v20    # "N":I
    .end local v24    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v32    # "i":I
    .end local v52    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v44    # "str":Ljava/io/FileInputStream;
    :catch_4
    move-exception v26

    .restart local v26    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v26    # "e":Ljava/io/IOException;
    .end local v44    # "str":Ljava/io/FileInputStream;
    .restart local v45    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v26

    .restart local v26    # "e":Ljava/io/IOException;
    move-object/from16 v44, v45

    .end local v45    # "str":Ljava/io/FileInputStream;
    .local v44, "str":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 42
    .param p1, "userId"    # I

    .prologue
    .line 1397
    const/16 v34, 0x0

    .line 1398
    .local v34, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v38

    .line 1399
    .local v38, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v17

    .line 1400
    .local v17, "backupFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1402
    :try_start_0
    new-instance v35, Ljava/io/FileInputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1403
    .end local v34    # "str":Ljava/io/FileInputStream;
    .local v35, "str":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v40, "Reading from backup stopped packages file\n"

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    const-string/jumbo v5, "Need to read from backup stopped packages file"

    .line 1404
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1406
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1410
    const-string/jumbo v5, "PackageManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Cleaning up stopped packages file "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1420
    :cond_0
    :goto_0
    if-nez v35, :cond_1d

    .line 1421
    :try_start_2
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v40, "No stopped packages file found\n"

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    const-string/jumbo v5, "No stopped packages file; assuming all started"

    .line 1423
    const/16 v40, 0x4

    move/from16 v0, v40

    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "pkg$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1431
    .local v3, "pkg":Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x0

    .line 1432
    const/4 v6, 0x1

    .line 1433
    const/4 v7, 0x0

    .line 1434
    const/4 v8, 0x0

    .line 1435
    const/4 v9, 0x0

    .line 1436
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1437
    const/4 v13, 0x0

    .line 1438
    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v4, p1

    .line 1431
    invoke-virtual/range {v3 .. v15}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1562
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v21

    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v34, v35

    .line 1563
    .end local v35    # "str":Ljava/io/FileInputStream;
    .local v34, "str":Ljava/io/FileInputStream;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v40, "Error reading: "

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Error reading stopped packages: "

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1564
    const/16 v40, 0x6

    move/from16 v0, v40

    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1566
    const-string/jumbo v5, "PackageManager"

    const-string/jumbo v40, "Error reading package manager stopped packages"

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-static {v5, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    .line 1414
    .local v34, "str":Ljava/io/FileInputStream;
    :catch_1
    move-exception v20

    .end local v34    # "str":Ljava/io/FileInputStream;
    .local v20, "e":Ljava/io/IOException;
    :goto_4
    move-object/from16 v35, v34

    .restart local v35    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 1440
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v32    # "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 1442
    .end local v32    # "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    new-instance v34, Ljava/io/FileInputStream;

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1444
    .end local v35    # "str":Ljava/io/FileInputStream;
    .local v34, "str":Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v31

    .line 1445
    .local v31, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1448
    :cond_3
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v37

    .local v37, "type":I
    const/4 v5, 0x2

    move/from16 v0, v37

    if-eq v0, v5, :cond_4

    .line 1449
    const/4 v5, 0x1

    move/from16 v0, v37

    if-ne v0, v5, :cond_3

    .line 1453
    :cond_4
    const/4 v5, 0x2

    move/from16 v0, v37

    if-eq v0, v5, :cond_5

    .line 1454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v40, "No start tag found in package restrictions file\n"

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    const-string/jumbo v5, "No start tag found in package manager stopped packages"

    .line 1455
    const/16 v40, 0x5

    move/from16 v0, v40

    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1457
    return-void

    .line 1460
    :cond_5
    const/16 v26, 0x0

    .line 1462
    .local v26, "maxAppLinkGeneration":I
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v29

    .line 1463
    .local v29, "outerDepth":I
    const/4 v4, 0x0

    .line 1464
    :cond_6
    :goto_6
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v37

    const/4 v5, 0x1

    move/from16 v0, v37

    if-eq v0, v5, :cond_1c

    .line 1465
    const/4 v5, 0x3

    move/from16 v0, v37

    if-ne v0, v5, :cond_7

    .line 1466
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v29

    if-le v5, v0, :cond_1c

    .line 1467
    :cond_7
    const/4 v5, 0x3

    move/from16 v0, v37

    if-eq v0, v5, :cond_6

    .line 1468
    const/4 v5, 0x4

    move/from16 v0, v37

    if-eq v0, v5, :cond_6

    .line 1472
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    .line 1473
    .local v36, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "pkg"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1474
    const-string/jumbo v5, "name"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1475
    .local v27, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1476
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_8

    .line 1477
    const-string/jumbo v5, "PackageManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "No package known for stopped package: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1562
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "maxAppLinkGeneration":I
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v36    # "tagName":Ljava/lang/String;
    .end local v37    # "type":I
    :catch_2
    move-exception v21

    .restart local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_2

    .line 1482
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "maxAppLinkGeneration":I
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v29    # "outerDepth":I
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v36    # "tagName":Ljava/lang/String;
    .restart local v37    # "type":I
    :cond_8
    const-string/jumbo v5, "enabled"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1483
    .local v22, "enabledStr":Ljava/lang/String;
    if-nez v22, :cond_c

    .line 1484
    const/4 v6, 0x0

    .line 1486
    .local v6, "enabled":I
    :goto_7
    const-string/jumbo v5, "enabledCaller"

    .line 1485
    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1487
    .local v11, "enabledCaller":Ljava/lang/String;
    const-string/jumbo v5, "inst"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1488
    .local v24, "installedStr":Ljava/lang/String;
    if-nez v24, :cond_d

    .line 1489
    const/4 v7, 0x1

    .line 1490
    :goto_8
    const-string/jumbo v5, "stopped"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1491
    .local v33, "stoppedStr":Ljava/lang/String;
    if-nez v33, :cond_e

    .line 1492
    const/4 v8, 0x0

    .line 1495
    :goto_9
    const-string/jumbo v5, "blocked"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1496
    .local v19, "blockedStr":Ljava/lang/String;
    if-nez v19, :cond_f

    .line 1497
    const/4 v10, 0x0

    .line 1498
    :goto_a
    const-string/jumbo v5, "hidden"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1499
    .local v23, "hiddenStr":Ljava/lang/String;
    if-nez v23, :cond_10

    .line 1501
    :goto_b
    const-string/jumbo v5, "nl"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1502
    .local v28, "notLaunchedStr":Ljava/lang/String;
    if-nez v33, :cond_11

    .line 1503
    const/4 v9, 0x0

    .line 1505
    :goto_c
    const-string/jumbo v5, "blockUninstall"

    .line 1504
    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1506
    .local v18, "blockUninstallStr":Ljava/lang/String;
    if-nez v18, :cond_12

    .line 1507
    const/4 v14, 0x0

    .line 1510
    :goto_d
    const-string/jumbo v5, "domainVerificationStatus"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1511
    .local v39, "verifStateStr":Ljava/lang/String;
    if-nez v39, :cond_13

    .line 1512
    const/4 v15, 0x0

    .line 1515
    .local v15, "verifState":I
    :goto_e
    const-string/jumbo v5, "app-link-generation"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1516
    .local v25, "linkGenStr":Ljava/lang/String;
    if-nez v25, :cond_14

    const/16 v16, 0x0

    .line 1517
    .local v16, "linkGeneration":I
    :goto_f
    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    .line 1518
    move/from16 v26, v16

    .line 1521
    :cond_9
    const/4 v12, 0x0

    .line 1522
    .local v12, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1524
    .local v13, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v30

    .line 1525
    .end local v12    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v30, "packageDepth":I
    :cond_a
    :goto_10
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v37

    const/4 v5, 0x1

    move/from16 v0, v37

    if-eq v0, v5, :cond_16

    .line 1526
    const/4 v5, 0x3

    move/from16 v0, v37

    if-ne v0, v5, :cond_b

    .line 1527
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v30

    if-le v5, v0, :cond_16

    .line 1528
    :cond_b
    const/4 v5, 0x3

    move/from16 v0, v37

    if-eq v0, v5, :cond_a

    .line 1529
    const/4 v5, 0x4

    move/from16 v0, v37

    if-eq v0, v5, :cond_a

    .line 1532
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    .line 1533
    const-string/jumbo v5, "enabled-components"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1534
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v12

    .local v12, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_10

    .line 1484
    .end local v6    # "enabled":I
    .end local v11    # "enabledCaller":Ljava/lang/String;
    .end local v12    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "verifState":I
    .end local v16    # "linkGeneration":I
    .end local v18    # "blockUninstallStr":Ljava/lang/String;
    .end local v19    # "blockedStr":Ljava/lang/String;
    .end local v23    # "hiddenStr":Ljava/lang/String;
    .end local v24    # "installedStr":Ljava/lang/String;
    .end local v25    # "linkGenStr":Ljava/lang/String;
    .end local v28    # "notLaunchedStr":Ljava/lang/String;
    .end local v30    # "packageDepth":I
    .end local v33    # "stoppedStr":Ljava/lang/String;
    .end local v39    # "verifStateStr":Ljava/lang/String;
    :cond_c
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "enabled":I
    goto/16 :goto_7

    .line 1489
    .restart local v11    # "enabledCaller":Ljava/lang/String;
    .restart local v24    # "installedStr":Ljava/lang/String;
    :cond_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .local v7, "installed":Z
    goto/16 :goto_8

    .line 1492
    .end local v7    # "installed":Z
    .restart local v33    # "stoppedStr":Ljava/lang/String;
    :cond_e
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .local v8, "stopped":Z
    goto/16 :goto_9

    .line 1497
    .end local v8    # "stopped":Z
    .restart local v19    # "blockedStr":Ljava/lang/String;
    :cond_f
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .local v10, "hidden":Z
    goto/16 :goto_a

    .line 1500
    .end local v10    # "hidden":Z
    .restart local v23    # "hiddenStr":Ljava/lang/String;
    :cond_10
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .restart local v10    # "hidden":Z
    goto/16 :goto_b

    .line 1503
    .end local v10    # "hidden":Z
    .restart local v28    # "notLaunchedStr":Ljava/lang/String;
    :cond_11
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .local v9, "notLaunched":Z
    goto/16 :goto_c

    .line 1507
    .end local v9    # "notLaunched":Z
    .restart local v18    # "blockUninstallStr":Ljava/lang/String;
    :cond_12
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .local v14, "blockUninstall":Z
    goto/16 :goto_d

    .line 1513
    .end local v14    # "blockUninstall":Z
    .restart local v39    # "verifStateStr":Ljava/lang/String;
    :cond_13
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .restart local v15    # "verifState":I
    goto/16 :goto_e

    .line 1516
    .restart local v25    # "linkGenStr":Ljava/lang/String;
    :cond_14
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .restart local v16    # "linkGeneration":I
    goto :goto_f

    .line 1535
    .restart local v30    # "packageDepth":I
    :cond_15
    const-string/jumbo v5, "disabled-components"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1536
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v13

    .local v13, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_10

    .end local v13    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_16
    move/from16 v5, p1

    .line 1540
    invoke-virtual/range {v4 .. v16}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_6

    .line 1569
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "enabled":I
    .end local v11    # "enabledCaller":Ljava/lang/String;
    .end local v15    # "verifState":I
    .end local v16    # "linkGeneration":I
    .end local v18    # "blockUninstallStr":Ljava/lang/String;
    .end local v19    # "blockedStr":Ljava/lang/String;
    .end local v22    # "enabledStr":Ljava/lang/String;
    .end local v23    # "hiddenStr":Ljava/lang/String;
    .end local v24    # "installedStr":Ljava/lang/String;
    .end local v25    # "linkGenStr":Ljava/lang/String;
    .end local v26    # "maxAppLinkGeneration":I
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "notLaunchedStr":Ljava/lang/String;
    .end local v29    # "outerDepth":I
    .end local v30    # "packageDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "stoppedStr":Ljava/lang/String;
    .end local v36    # "tagName":Ljava/lang/String;
    .end local v37    # "type":I
    .end local v39    # "verifStateStr":Ljava/lang/String;
    :catch_3
    move-exception v20

    .line 1570
    .restart local v20    # "e":Ljava/io/IOException;
    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v40, "Error reading: "

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Error reading settings: "

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v40, 0x6

    move/from16 v0, v40

    invoke-static {v0, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1572
    const-string/jumbo v5, "PackageManager"

    const-string/jumbo v40, "Error reading package manager stopped packages"

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-static {v5, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1543
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v26    # "maxAppLinkGeneration":I
    .restart local v29    # "outerDepth":I
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v36    # "tagName":Ljava/lang/String;
    .restart local v37    # "type":I
    :cond_17
    :try_start_5
    const-string/jumbo v5, "preferred-activities"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1544
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_6

    .line 1545
    :cond_18
    const-string/jumbo v5, "persistent-preferred-activities"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1546
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_6

    .line 1547
    :cond_19
    const-string/jumbo v5, "crossProfile-intent-filters"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1548
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_6

    .line 1549
    :cond_1a
    const-string/jumbo v5, "default-apps"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1550
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_6

    .line 1552
    :cond_1b
    const-string/jumbo v5, "PackageManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Unknown element under <stopped-packages>: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 1553
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v41

    .line 1552
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1558
    .end local v36    # "tagName":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileInputStream;->close()V

    .line 1560
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v40, v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 1569
    .end local v26    # "maxAppLinkGeneration":I
    .end local v29    # "outerDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "str":Ljava/io/FileInputStream;
    .end local v37    # "type":I
    .restart local v35    # "str":Ljava/io/FileInputStream;
    :catch_4
    move-exception v20

    .restart local v20    # "e":Ljava/io/IOException;
    move-object/from16 v34, v35

    .end local v35    # "str":Ljava/io/FileInputStream;
    .restart local v34    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_11

    .line 1414
    .end local v20    # "e":Ljava/io/IOException;
    .end local v34    # "str":Ljava/io/FileInputStream;
    .restart local v35    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v20

    .restart local v20    # "e":Ljava/io/IOException;
    move-object/from16 v34, v35

    .end local v35    # "str":Ljava/io/FileInputStream;
    .restart local v34    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v20    # "e":Ljava/io/IOException;
    .end local v34    # "str":Ljava/io/FileInputStream;
    .restart local v35    # "str":Ljava/io/FileInputStream;
    :cond_1d
    move-object/from16 v34, v35

    .end local v35    # "str":Ljava/io/FileInputStream;
    .restart local v34    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .local v34, "str":Ljava/io/FileInputStream;
    :cond_1e
    move-object/from16 v35, v34

    .restart local v35    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 1269
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1271
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 1272
    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 1273
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1277
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1279
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1280
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1281
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 1284
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1285
    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    .line 1284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1285
    const-string/jumbo v5, " at "

    .line 1284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1286
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    .line 1284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1283
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 1290
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1289
    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1291
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1268
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method readStoppedLPw()V
    .locals 15

    .prologue
    .line 1967
    const/4 v8, 0x0

    .line 1968
    .local v8, "str":Ljava/io/FileInputStream;
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1970
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1971
    .end local v8    # "str":Ljava/io/FileInputStream;
    .local v9, "str":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Reading from backup stopped packages file\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    const-string/jumbo v12, "Need to read from backup stopped packages file"

    .line 1972
    const/4 v13, 0x4

    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1974
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1978
    const-string/jumbo v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Cleaning up stopped packages file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1979
    iget-object v14, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 1978
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1988
    :cond_0
    :goto_0
    if-nez v9, :cond_c

    .line 1989
    :try_start_2
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1990
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "No stopped packages file found\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    const-string/jumbo v12, "No stopped packages file file; assuming all started"

    .line 1991
    const/4 v13, 0x4

    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1996
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pkg$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1997
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1998
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 2052
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v9

    .line 2053
    .end local v9    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :goto_2
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error reading stopped packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2054
    const/4 v13, 0x6

    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2056
    const-string/jumbo v12, "PackageManager"

    const-string/jumbo v13, "Error reading package manager stopped packages"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1966
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    .line 1982
    .local v8, "str":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .end local v8    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    move-object v9, v8

    .restart local v9    # "str":Ljava/io/FileInputStream;
    goto :goto_0

    .line 2000
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 2002
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2004
    .end local v9    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2005
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2008
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 2009
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2013
    :cond_4
    const/4 v12, 0x2

    if-eq v11, v12, :cond_5

    .line 2014
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "No start tag found in stopped packages file\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    const-string/jumbo v12, "No start tag found in package manager stopped packages"

    .line 2015
    const/4 v13, 0x5

    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2017
    return-void

    .line 2020
    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2021
    .local v3, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    .line 2022
    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    .line 2023
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v3, :cond_b

    .line 2024
    :cond_7
    const/4 v12, 0x3

    if-eq v11, v12, :cond_6

    .line 2025
    const/4 v12, 0x4

    if-eq v11, v12, :cond_6

    .line 2029
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2030
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "pkg"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2031
    const-string/jumbo v12, "name"

    const/4 v13, 0x0

    invoke-interface {v4, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2032
    .local v2, "name":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 2033
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_9

    .line 2034
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2035
    const-string/jumbo v12, "1"

    const-string/jumbo v13, "nl"

    const/4 v14, 0x0

    invoke-interface {v4, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2036
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2042
    :cond_8
    :goto_7
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 2052
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_2
    move-exception v1

    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_2

    .line 2039
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_9
    const-string/jumbo v12, "PackageManager"

    .line 2040
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No package known for stopped package: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2039
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 2059
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_3
    move-exception v0

    .line 2060
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    iget-object v12, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error reading settings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2062
    const-string/jumbo v12, "PackageManager"

    const-string/jumbo v13, "Error reading package manager stopped packages"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 2044
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_a
    :try_start_5
    const-string/jumbo v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown element under <stopped-packages>: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2045
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 2044
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 2050
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 2059
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "str":Ljava/io/FileInputStream;
    .end local v11    # "type":I
    .restart local v9    # "str":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto :goto_8

    .line 1982
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v9    # "str":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v9    # "str":Ljava/io/FileInputStream;
    :cond_c
    move-object v8, v9

    .end local v9    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .local v8, "str":Ljava/io/FileInputStream;
    :cond_d
    move-object v9, v8

    .restart local v9    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 3793
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v9

    .line 3795
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3796
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3797
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3800
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3801
    .local v0, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 3802
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 3803
    .local v7, "sourceUserId":I
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 3804
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v6, 0x0

    .line 3806
    .local v6, "needsWriting":Z
    new-instance v3, Landroid/util/ArraySet;

    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 3807
    .local v3, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cpif$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 3808
    .local v1, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v8

    if-ne v8, p1, :cond_1

    .line 3809
    const/4 v6, 0x1

    .line 3810
    invoke-virtual {v4, v1}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3793
    .end local v0    # "count":I
    .end local v1    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v2    # "cpif$iterator":Ljava/util/Iterator;
    .end local v3    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "i":I
    .end local v6    # "needsWriting":Z
    .end local v7    # "sourceUserId":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 3813
    .restart local v0    # "count":I
    .restart local v2    # "cpif$iterator":Ljava/util/Iterator;
    .restart local v3    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .restart local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .restart local v5    # "i":I
    .restart local v6    # "needsWriting":Z
    .restart local v7    # "sourceUserId":I
    :cond_2
    if-eqz v6, :cond_3

    .line 3814
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3801
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "cpif$iterator":Ljava/util/Iterator;
    .end local v3    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v6    # "needsWriting":Z
    .end local v7    # "sourceUserId":I
    :cond_4
    monitor-exit v9

    .line 3792
    return-void
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1163
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1164
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 1165
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    .line 1166
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1170
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1171
    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, "result":Z
    const/4 v2, 0x0

    array-length v3, p2

    .end local v0    # "result":Z
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p2, v2

    .line 1177
    .local v1, "userId":I
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1176
    .local v0, "result":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1179
    .end local v0    # "result":Z
    .end local v1    # "userId":I
    :cond_0
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 942
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 943
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 944
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 947
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 948
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 950
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    .line 953
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 954
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    .line 957
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method removeUserLPw(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 3776
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3777
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3778
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_0

    .line 3780
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3781
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v3

    .line 3782
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3783
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v3

    .line 3784
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3785
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 3787
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v4, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-wrap0(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 3789
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 3775
    return-void
.end method

.method setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1183
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1184
    const/4 v0, 0x0

    return v0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1187
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1188
    const/4 v0, 0x1

    return v0
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 388
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 390
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallStatus(I)V

    .line 386
    :cond_0
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkgName"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 397
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 395
    :cond_0
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .locals 9
    .param p1, "yucky"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .prologue
    .line 3935
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 3936
    .local v7, "appId":I
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 3937
    .local v8, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v8, :cond_0

    .line 3938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3940
    :cond_0
    if-nez p4, :cond_1

    iget v0, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v7, v0, :cond_1

    .line 3941
    new-instance v0, Ljava/lang/SecurityException;

    .line 3942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3943
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 3942
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3944
    const-string/jumbo v2, ", uid="

    .line 3942
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3944
    const-string/jumbo v2, ", package uid="

    .line 3942
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3944
    iget v2, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3942
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3941
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3953
    :cond_1
    invoke-virtual {v8, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    if-eq v0, p3, :cond_4

    .line 3954
    invoke-virtual {v8, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 3956
    invoke-virtual {v8, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3957
    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3958
    const-string/jumbo v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    .line 3959
    iget-object v2, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 3960
    iget-object v4, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput p6, v6, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    :cond_2

    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/pm/Settings;->sendFlymePackageFirstLaunchBroadcast(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method transferPermissionsLPw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "origPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 542
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_5

    .line 544
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 545
    .local v3, "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 546
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 547
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "PackageManager"

    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Moving permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 549
    const-string/jumbo v6, " from pkg "

    .line 548
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 549
    iget-object v6, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    .line 548
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 550
    const-string/jumbo v6, " to "

    .line 548
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 547
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    iput-object p2, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    .line 552
    iput-object v7, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 553
    iput-object v7, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 554
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_2

    .line 555
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 557
    :cond_2
    iput v8, v0, Lcom/android/server/pm/BasePermission;->uid:I

    .line 558
    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/BasePermission;->setGids([IZ)V

    goto :goto_2

    .line 544
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "bp$iterator":Ljava/util/Iterator;
    .end local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    .restart local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    goto :goto_1

    .line 542
    .restart local v1    # "bp$iterator":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "bp$iterator":Ljava/util/Iterator;
    .end local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_5
    return-void
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1123
    .local v1, "current":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_1

    .line 1124
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    .line 1125
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No package known: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1131
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 1132
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1133
    .local v0, "alwaysGeneration":I
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    :goto_0
    invoke-virtual {v1, p2, v0, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1139
    const/4 v2, 0x1

    return v2

    .line 1135
    .end local v0    # "alwaysGeneration":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "alwaysGeneration":I
    goto :goto_0
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .locals 15
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .prologue
    .line 869
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v13, :cond_1

    .line 870
    :cond_0
    const-string/jumbo v13, "PackageManager"

    .line 871
    const-string/jumbo v14, "Trying to update info for null package. Just ignoring"

    .line 870
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/16 v13, -0x2710

    return v13

    .line 876
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v13, :cond_2

    .line 877
    const/16 v13, -0x2710

    return v13

    .line 880
    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 883
    .local v11, "sus":Lcom/android/server/pm/SharedUserSetting;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "eachPerm$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 884
    .local v3, "eachPerm":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v13, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 885
    .local v1, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_3

    .line 890
    const/4 v12, 0x0

    .line 891
    .local v12, "used":Z
    iget-object v13, v11, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 892
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v13, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v13, :cond_4

    .line 893
    iget-object v13, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 894
    iget-object v13, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 892
    if-eqz v13, :cond_4

    .line 895
    const/4 v12, 0x1

    .line 899
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_5
    if-nez v12, :cond_3

    .line 903
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v7

    .line 904
    .local v7, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 908
    .local v2, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v2, :cond_8

    .line 909
    const/4 v10, 0x0

    .line 910
    .local v10, "reqByDisabledSysPkg":Z
    iget-object v13, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v13, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "permission$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 911
    .local v5, "permission":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 912
    const/4 v10, 0x1

    .line 916
    .end local v5    # "permission":Ljava/lang/String;
    :cond_7
    if-nez v10, :cond_3

    .line 924
    .end local v6    # "permission$iterator":Ljava/util/Iterator;
    .end local v10    # "reqByDisabledSysPkg":Z
    :cond_8
    const/16 v13, 0xff

    const/4 v14, 0x0

    .line 923
    move/from16 v0, p2

    invoke-virtual {v7, v1, v0, v13, v14}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    .line 926
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I

    move-result v13

    .line 927
    const/4 v14, 0x1

    .line 926
    if-ne v13, v14, :cond_9

    .line 928
    const/4 v13, -0x1

    return v13

    .line 932
    :cond_9
    move/from16 v0, p2

    invoke-virtual {v7, v1, v0}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v13

    .line 933
    const/4 v14, 0x1

    .line 932
    if-ne v13, v14, :cond_3

    .line 934
    return p2

    .line 938
    .end local v1    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "eachPerm":Ljava/lang/String;
    .end local v7    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v9    # "pkg$iterator":Ljava/util/Iterator;
    .end local v12    # "used":Z
    :cond_a
    const/16 v13, -0x2710

    return v13
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1668
    const-string/jumbo v4, "all-intent-filter-verifications"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1669
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1670
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1671
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1672
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v2

    .line 1673
    .local v2, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v2, :cond_0

    .line 1674
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1670
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1677
    .end local v2    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    const-string/jumbo v4, "all-intent-filter-verifications"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1667
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .locals 5

    .prologue
    .line 1224
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 1225
    .local v0, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1223
    .end local v0    # "userId":I
    :cond_0
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 1216
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_0

    return-void

    .line 1218
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1219
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_0

    .line 1214
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1639
    const-string/jumbo v3, "crossProfile-intent-filters"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1640
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1641
    .local v2, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v2, :cond_0

    .line 1642
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cpif$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1643
    .local v0, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1644
    invoke-virtual {v0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1645
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1648
    .end local v0    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v1    # "cpif$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "crossProfile-intent-filters"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1638
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1723
    const-string/jumbo v1, "default-apps"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1724
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1725
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1726
    const-string/jumbo v1, "default-browser"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1727
    const-string/jumbo v1, "packageName"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1728
    const-string/jumbo v1, "default-browser"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1730
    :cond_0
    const-string/jumbo v1, "default-apps"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1722
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2338
    const-string/jumbo v0, "updated-package"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2339
    const-string/jumbo v0, "name"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2340
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2341
    const-string/jumbo v0, "realName"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2343
    :cond_0
    const-string/jumbo v0, "codePath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2344
    const-string/jumbo v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2345
    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2346
    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2347
    const-string/jumbo v0, "version"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2350
    const-string/jumbo v0, "flags"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2351
    const-string/jumbo v0, "pkgFlagsEx"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgFlagsEx:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2353
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2354
    const-string/jumbo v0, "resourcePath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2356
    :cond_1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2357
    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2359
    :cond_2
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2360
    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2362
    :cond_3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2363
    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2365
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2366
    const-string/jumbo v0, "cpuAbiOverride"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2369
    :cond_5
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_7

    .line 2370
    const-string/jumbo v0, "userId"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2376
    :goto_0
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_6

    .line 2377
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2381
    :cond_6
    const-string/jumbo v0, "updated-package"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2337
    return-void

    .line 2372
    :cond_7
    const-string/jumbo v0, "sharedUserId"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "verificationInfo"    # Landroid/content/pm/IntentFilterVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1654
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1655
    const-string/jumbo v0, "domain-verification"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1656
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1657
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_0

    .line 1658
    const-string/jumbo v0, "PackageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrote domain verification for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1659
    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_0
    const-string/jumbo v0, "domain-verification"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1653
    :cond_1
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2470
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2471
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v2, "defined-keyset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2472
    const-string/jumbo v3, "alias"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2473
    const-string/jumbo v3, "identifier"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2474
    const-string/jumbo v2, "defined-keyset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2469
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 29

    .prologue
    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_0

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 2080
    const-string/jumbo v25, "PackageManager"

    .line 2081
    const-string/jumbo v26, "Unable to backup package manager settings,  current changes will be lost at reboot"

    .line 2080
    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    return-void

    .line 2086
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 2087
    const-string/jumbo v25, "PackageManager"

    const-string/jumbo v26, "Preserving older settings backup"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 2094
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2095
    .local v10, "fstr":Ljava/io/FileOutputStream;
    new-instance v19, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2098
    .local v19, "str":Ljava/io/BufferedOutputStream;
    new-instance v18, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2099
    .local v18, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v25, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v25 .. v25}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2100
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2101
    const-string/jumbo v25, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v26, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2103
    const-string/jumbo v25, "packages"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2105
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_2

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 2107
    .local v24, "volumeUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2109
    .local v23, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v25, "version"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2110
    const-string/jumbo v25, "volumeUuid"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    const-string/jumbo v25, "sdkVersion"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2112
    const-string/jumbo v25, "databaseVersion"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2113
    const-string/jumbo v25, "fingerprint"

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const-string/jumbo v25, "version"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2105
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 2117
    .end local v23    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v24    # "volumeUuid":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 2118
    const-string/jumbo v25, "verifier"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2119
    const-string/jumbo v25, "device"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2120
    const-string/jumbo v25, "verifier"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2123
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 2124
    const-string/jumbo v25, "read-external-storage"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2126
    const-string/jumbo v26, "enforcement"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_6

    const-string/jumbo v25, "1"

    :goto_1
    const/16 v27, 0x0

    .line 2125
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2127
    const-string/jumbo v25, "read-external-storage"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2130
    :cond_4
    const-string/jumbo v25, "permission-trees"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "bp$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/BasePermission;

    .line 2132
    .local v4, "bp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2221
    .end local v4    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v5    # "bp$iterator":Ljava/util/Iterator;
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    .end local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v8

    .line 2222
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v25, "PackageManager"

    const-string/jumbo v26, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2234
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    move-result v25

    if-nez v25, :cond_5

    .line 2236
    const-string/jumbo v25, "PackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to clean up mangled file: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v27, v0

    .line 2236
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_5
    return-void

    .line 2126
    .restart local v10    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "i":I
    .restart local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19    # "str":Ljava/io/BufferedOutputStream;
    :cond_6
    :try_start_1
    const-string/jumbo v25, "0"

    goto/16 :goto_1

    .line 2134
    .restart local v5    # "bp$iterator":Ljava/util/Iterator;
    :cond_7
    const-string/jumbo v25, "permission-trees"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2136
    const-string/jumbo v25, "permissions"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/BasePermission;

    .line 2138
    .restart local v4    # "bp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 2224
    .end local v4    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v5    # "bp$iterator":Ljava/util/Iterator;
    .end local v10    # "fstr":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    .end local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v6

    .line 2229
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v25, "PackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unable to write package manager settings, current changes will be lost at reboot "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 2230
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2229
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2140
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "bp$iterator":Ljava/util/Iterator;
    .restart local v10    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "i":I
    .restart local v18    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19    # "str":Ljava/io/BufferedOutputStream;
    :cond_8
    :try_start_2
    const-string/jumbo v25, "permissions"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "pkg$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    .line 2143
    .local v16, "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_5

    .line 2146
    .end local v16    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    .line 2147
    .restart local v16    # "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_6

    .line 2150
    .end local v16    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "usr$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/SharedUserSetting;

    .line 2151
    .local v21, "usr":Lcom/android/server/pm/SharedUserSetting;
    const-string/jumbo v25, "shared-user"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2152
    const-string/jumbo v25, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2153
    const-string/jumbo v25, "userId"

    .line 2154
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 2153
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2155
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v25, v0

    const-string/jumbo v26, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2156
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2158
    const-string/jumbo v25, "shared-user"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_7

    .line 2161
    .end local v21    # "usr":Lcom/android/server/pm/SharedUserSetting;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_d

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "item$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageCleanItem;

    .line 2163
    .local v12, "item":Landroid/content/pm/PackageCleanItem;
    iget v0, v12, Landroid/content/pm/PackageCleanItem;->userId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 2164
    .local v20, "userStr":Ljava/lang/String;
    const-string/jumbo v25, "cleaning-package"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2165
    const-string/jumbo v25, "name"

    iget-object v0, v12, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2166
    const-string/jumbo v26, "code"

    iget-boolean v0, v12, Landroid/content/pm/PackageCleanItem;->andCode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    const-string/jumbo v25, "true"

    :goto_9
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2167
    const-string/jumbo v25, "user"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2168
    const-string/jumbo v25, "cleaning-package"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 2166
    :cond_c
    const-string/jumbo v25, "false"

    goto :goto_9

    .line 2172
    .end local v12    # "item":Landroid/content/pm/PackageCleanItem;
    .end local v13    # "item$iterator":Ljava/util/Iterator;
    .end local v20    # "userStr":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v25

    if-lez v25, :cond_e

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "e$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2174
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v25, "renamed-package"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2175
    const-string/jumbo v26, "new"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2176
    const-string/jumbo v26, "old"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2177
    const-string/jumbo v25, "renamed-package"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 2181
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "e$iterator":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 2182
    .local v15, "numIVIs":I
    if-lez v15, :cond_12

    .line 2183
    sget-boolean v25, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v25, :cond_f

    .line 2184
    const-string/jumbo v25, "PackageSettings"

    const-string/jumbo v26, "Writing restored-ivi entries to packages.xml"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    :cond_f
    const-string/jumbo v25, "restored-ivi"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2187
    const/4 v11, 0x0

    :goto_b
    if-ge v11, v15, :cond_10

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2189
    .local v14, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2187
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 2191
    .end local v14    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_10
    const-string/jumbo v25, "restored-ivi"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2198
    :cond_11
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2200
    const-string/jumbo v25, "packages"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2202
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2204
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2205
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2206
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2212
    const/16 v26, 0x1b0

    .line 2214
    const/16 v27, -0x1

    const/16 v28, -0x1

    .line 2211
    invoke-static/range {v25 .. v28}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2219
    return-void

    .line 2193
    :cond_12
    sget-boolean v25, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v25, :cond_11

    .line 2194
    const-string/jumbo v25, "PackageSettings"

    const-string/jumbo v26, "  no restored IVI entries to write"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2386
    const-string/jumbo v0, "package"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2387
    const-string/jumbo v0, "name"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2388
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2389
    const-string/jumbo v0, "realName"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2391
    :cond_0
    const-string/jumbo v0, "codePath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2392
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2393
    const-string/jumbo v0, "resourcePath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2396
    :cond_1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2397
    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2399
    :cond_2
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2400
    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2402
    :cond_3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2403
    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2405
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2406
    const-string/jumbo v0, "cpuAbiOverride"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2409
    :cond_5
    const-string/jumbo v0, "publicFlags"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2410
    const-string/jumbo v0, "privateFlags"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2412
    const-string/jumbo v0, "pkgFlagsEx"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgFlagsEx:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2414
    const-string/jumbo v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2415
    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2416
    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2417
    const-string/jumbo v0, "version"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2418
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_a

    .line 2419
    const-string/jumbo v0, "userId"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2423
    :goto_0
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    if-eqz v0, :cond_6

    .line 2424
    const-string/jumbo v0, "uidError"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2426
    :cond_6
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->installStatus:I

    if-nez v0, :cond_7

    .line 2427
    const-string/jumbo v0, "installStatus"

    const-string/jumbo v1, "false"

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2429
    :cond_7
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2430
    const-string/jumbo v0, "installer"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2432
    :cond_8
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2433
    const-string/jumbo v0, "volumeUuid"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2435
    :cond_9
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v1, "sigs"

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2437
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2440
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2441
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2442
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2443
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2445
    const-string/jumbo v0, "package"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2385
    return-void

    .line 2421
    :cond_a
    const-string/jumbo v0, "sharedUserId"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method writePackageListLPr()V
    .locals 1

    .prologue
    .line 2244
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2243
    return-void
.end method

.method writePackageListLPr(I)V
    .locals 24
    .param p1, "creatingUserId"    # I

    .prologue
    .line 2249
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v18

    .line 2250
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 2251
    .local v17, "userIds":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_0

    .line 2252
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    aput v20, v17, v8

    .line 2251
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2254
    :cond_0
    const/16 v20, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 2255
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v17

    .line 2259
    :cond_1
    new-instance v16, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ".tmp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2260
    .local v16, "tempFile":Ljava/io/File;
    new-instance v10, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2262
    .local v10, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v19

    .line 2263
    .local v19, "writeTarget":Ljava/io/File;
    const/4 v5, 0x0

    .line 2264
    .local v5, "fstr":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 2266
    .local v14, "str":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2267
    .local v6, "fstr":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v15, Ljava/io/BufferedOutputStream;

    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    invoke-direct {v15, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2268
    .local v15, "str":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    move-result-object v20

    const/16 v21, 0x1a0

    const/16 v22, 0x3e8

    const/16 v23, 0x408

    invoke-static/range {v20 .. v23}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2270
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2271
    .local v13, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 2272
    .local v11, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 2273
    :cond_3
    const-string/jumbo v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Skipping "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " due to missing metadata"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2329
    .end local v11    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "pkg$iterator":Ljava/util/Iterator;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v14, v15

    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .local v14, "str":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 2330
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    :goto_2
    const-string/jumbo v20, "PackageSettings"

    const-string/jumbo v21, "Failed to write packages.list"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2331
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2332
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2247
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 2277
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    .restart local v11    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v12    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "str":Ljava/io/BufferedOutputStream;
    :cond_4
    :try_start_3
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2278
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v20, Ljava/io/File;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 2279
    .local v3, "dataPath":Ljava/lang/String;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_5

    const/4 v9, 0x1

    .line 2280
    .local v9, "isDebug":Z
    :goto_4
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->computeGids([I)[I

    move-result-object v7

    .line 2283
    .local v7, "gids":[I
    const-string/jumbo v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_2

    .line 2304
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2305
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    const-string/jumbo v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2308
    if-eqz v9, :cond_6

    const-string/jumbo v20, " 1 "

    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    const-string/jumbo v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2312
    const-string/jumbo v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    if-eqz v7, :cond_7

    array-length v0, v7

    move/from16 v20, v0

    if-lez v20, :cond_7

    .line 2314
    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2315
    const/4 v8, 0x1

    :goto_6
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_8

    .line 2316
    const-string/jumbo v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2317
    aget v20, v7, v8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2315
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 2279
    .end local v7    # "gids":[I
    .end local v9    # "isDebug":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isDebug":Z
    goto/16 :goto_4

    .line 2308
    .restart local v7    # "gids":[I
    :cond_6
    const-string/jumbo v20, " 0 "

    goto :goto_5

    .line 2320
    :cond_7
    const-string/jumbo v20, "none"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2322
    :cond_8
    const-string/jumbo v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    goto/16 :goto_1

    .line 2325
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "dataPath":Ljava/lang/String;
    .end local v7    # "gids":[I
    .end local v9    # "isDebug":Z
    .end local v11    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_9
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2326
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2327
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 2328
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v14, v15

    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .restart local v14    # "str":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .local v5, "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 2329
    .end local v12    # "pkg$iterator":Ljava/util/Iterator;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .local v5, "fstr":Ljava/io/FileOutputStream;
    .local v14, "str":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .local v5, "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 1739
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v11

    .line 1740
    .local v11, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v2

    .line 1741
    .local v2, "backupFile":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 1742
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1747
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1748
    invoke-virtual {v11, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1750
    invoke-virtual {v11}, Ljava/io/File;->canWrite()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1751
    const-string/jumbo v13, "PackageSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is not writable."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_0
    const-string/jumbo v13, "PackageManager"

    .line 1755
    const-string/jumbo v14, "Unable to backup user packages state file, current changes will be lost at reboot"

    .line 1754
    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    return-void

    .line 1760
    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1761
    const-string/jumbo v13, "PackageManager"

    const-string/jumbo v14, "Preserving older stopped packages backup"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1767
    .local v4, "fstr":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1769
    .local v10, "str":Ljava/io/BufferedOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1770
    .local v9, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1771
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1772
    const-string/jumbo v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v14, 0x1

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1774
    const-string/jumbo v13, "package-restrictions"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1776
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "pkg$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1777
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v12

    .line 1778
    .local v12, "ustate":Landroid/content/pm/PackageUserState;
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    if-nez v13, :cond_4

    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-nez v13, :cond_4

    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v13, :cond_4

    .line 1779
    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v13, :cond_e

    .line 1788
    :cond_4
    :goto_1
    const-string/jumbo v13, "pkg"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1789
    const-string/jumbo v13, "name"

    iget-object v14, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1792
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v13, :cond_5

    .line 1793
    const-string/jumbo v13, "inst"

    const-string/jumbo v14, "false"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1795
    :cond_5
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v13, :cond_6

    .line 1796
    const-string/jumbo v13, "stopped"

    const-string/jumbo v14, "true"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1798
    :cond_6
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v13, :cond_7

    .line 1799
    const-string/jumbo v13, "nl"

    const-string/jumbo v14, "true"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1801
    :cond_7
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v13, :cond_8

    .line 1802
    const-string/jumbo v13, "hidden"

    const-string/jumbo v14, "true"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1804
    :cond_8
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    if-eqz v13, :cond_9

    .line 1805
    const-string/jumbo v13, "blockUninstall"

    const-string/jumbo v14, "true"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1807
    :cond_9
    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v13, :cond_a

    .line 1808
    const-string/jumbo v13, "enabled"

    .line 1809
    iget v14, v12, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 1808
    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1810
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v13, :cond_a

    .line 1811
    const-string/jumbo v13, "enabledCaller"

    .line 1812
    iget-object v14, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 1811
    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1815
    :cond_a
    iget v13, v12, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v13, :cond_b

    .line 1817
    const-string/jumbo v13, "domainVerificationStatus"

    .line 1818
    iget v14, v12, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 1817
    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1820
    :cond_b
    iget v13, v12, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v13, :cond_c

    .line 1821
    const-string/jumbo v13, "app-link-generation"

    .line 1822
    iget v14, v12, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 1821
    const/4 v15, 0x0

    invoke-interface {v9, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1824
    :cond_c
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v13, :cond_12

    .line 1825
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-lez v13, :cond_12

    .line 1826
    const-string/jumbo v13, "enabled-components"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1827
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "name$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1828
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v13, "item"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1829
    const-string/jumbo v13, "name"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1830
    const-string/jumbo v13, "item"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1872
    .end local v4    # "fstr":Ljava/io/FileOutputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "pkg$iterator":Ljava/util/Iterator;
    .end local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v10    # "str":Ljava/io/BufferedOutputStream;
    .end local v12    # "ustate":Landroid/content/pm/PackageUserState;
    :catch_0
    move-exception v3

    .line 1875
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to write package manager user packages state, current changes will be lost at reboot "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1881
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_d

    .line 1882
    const-string/jumbo v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to clean up mangled file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1883
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 1882
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_d
    return-void

    .line 1780
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "fstr":Ljava/io/FileOutputStream;
    .restart local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v8    # "pkg$iterator":Ljava/util/Iterator;
    .restart local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10    # "str":Ljava/io/BufferedOutputStream;
    .restart local v12    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_e
    :try_start_1
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 1778
    if-nez v13, :cond_4

    .line 1781
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v13, :cond_f

    .line 1782
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-gtz v13, :cond_4

    .line 1783
    :cond_f
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v13, :cond_10

    .line 1784
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-gtz v13, :cond_4

    .line 1785
    :cond_10
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 1778
    if-nez v13, :cond_4

    .line 1786
    iget v13, v12, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v13, :cond_3

    goto/16 :goto_1

    .line 1832
    .restart local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_11
    const-string/jumbo v13, "enabled-components"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1834
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_12
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v13, :cond_14

    .line 1835
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-lez v13, :cond_14

    .line 1836
    const-string/jumbo v13, "disabled-components"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1837
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "name$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1838
    .restart local v5    # "name":Ljava/lang/String;
    const-string/jumbo v13, "item"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1839
    const-string/jumbo v13, "name"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1840
    const-string/jumbo v13, "item"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1842
    .end local v5    # "name":Ljava/lang/String;
    :cond_13
    const-string/jumbo v13, "disabled-components"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1845
    .end local v6    # "name$iterator":Ljava/util/Iterator;
    :cond_14
    const-string/jumbo v13, "pkg"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 1849
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_15
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1, v13}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 1850
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 1851
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 1852
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 1854
    const-string/jumbo v13, "package-restrictions"

    const/4 v14, 0x0

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1856
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1858
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1859
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1860
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 1864
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1865
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1866
    const/16 v14, 0x1b0

    .line 1868
    const/4 v15, -0x1

    const/16 v16, -0x1

    .line 1865
    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1871
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"    # Lcom/android/server/pm/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2480
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2481
    const-string/jumbo v1, "item"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2482
    const-string/jumbo v1, "name"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2483
    const-string/jumbo v1, "package"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2484
    iget v1, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    if-eqz v1, :cond_0

    .line 2485
    const-string/jumbo v1, "protection"

    iget v2, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2487
    :cond_0
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v1, :cond_1

    .line 2488
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Writing perm: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2489
    iget v3, p2, Lcom/android/server/pm/BasePermission;->type:I

    .line 2488
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_1
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2491
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2492
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    :goto_0
    if-eqz v0, :cond_3

    .line 2493
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "dynamic"

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2494
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_2

    .line 2495
    const-string/jumbo v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2497
    :cond_2
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 2498
    const-string/jumbo v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2502
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_3
    const-string/jumbo v1, "item"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2479
    :cond_4
    return-void

    .line 2491
    :cond_5
    iget-object v0, p2, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .restart local v0    # "pi":Landroid/content/pm/PermissionInfo;
    goto :goto_0
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/4 v4, 0x0

    .line 1947
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1948
    return-void

    .line 1951
    :cond_0
    const-string/jumbo v2, "perms"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1953
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "permissionState$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 1954
    .local v0, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1955
    const-string/jumbo v2, "name"

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1956
    const-string/jumbo v2, "granted"

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1957
    const-string/jumbo v2, "flags"

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1958
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1961
    .end local v0    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_1
    const-string/jumbo v2, "perms"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1946
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1625
    const-string/jumbo v3, "persistent-preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1626
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1627
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1628
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ppa$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1629
    .local v0, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1630
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1631
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1634
    .end local v0    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    .end local v1    # "ppa$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "persistent-preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1624
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1611
    const-string/jumbo v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1612
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1613
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1614
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pa$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredActivity;

    .line 1615
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1616
    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1617
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1620
    .end local v0    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v1    # "pa$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1610
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 4598
    if-eqz p2, :cond_0

    .line 4599
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    .line 4597
    :goto_0
    return-void

    .line 4601
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    goto :goto_0
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2450
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2451
    const-string/jumbo v0, "identifier"

    .line 2452
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2451
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2453
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2449
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2458
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    .line 2459
    .local v2, "properSigning":J
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2460
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v0, v5, v4

    .line 2461
    .local v0, "id":J
    const-string/jumbo v7, "upgrade-keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    const-string/jumbo v7, "identifier"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2463
    const-string/jumbo v7, "upgrade-keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2460
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2457
    .end local v0    # "id":J
    :cond_0
    return-void
.end method

.method private sendFlymePackageFirstLaunchBroadcast(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 8
    .param p1, "yucky"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .local v7, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    const-string v1, "meizu.intent.action.PACKAGE_FIRST_LAUNCH"

    iget-object v2, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput p3, v6, v0

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    return-void
.end method
