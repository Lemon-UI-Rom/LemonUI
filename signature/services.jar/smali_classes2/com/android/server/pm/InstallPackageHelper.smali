.class public final Lcom/android/server/pm/InstallPackageHelper;
.super Ljava/lang/Object;
.source "qb/109710345 eebc2953bcd731c3a7c80d874a4870b868f9481fefa5dc9e0d8d6610d5394652"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstallingPackages:Ljava/util/Set;

.field public mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mInternalLock:Ljava/lang/Object;

.field public final mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    iput-object p5, p0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iget-object p2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object p3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/incremental/IncrementalManager;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/ApexManager;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object p4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3, p1, p4}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UpdateOwnershipHelper;

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    :cond_0
    return-void
.end method

.method public static hasLauncherEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getActivities()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static hasZippedOverlays(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v0, "com.samsung.android.hasZippedOverlays"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 5

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V
    .locals 8

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p0

    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static tryToRecover(Landroid/apex/ApexInfo;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@ Unexpected exception occurred while parsing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    const-string/jumbo v2, "PackageManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    const-string v0, "/|@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const-string/jumbo v1, "sys.apexd.restore.module"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string/jumbo v5, "data"

    const/4 v6, 0x4

    if-le v0, v6, :cond_0

    aget-object v0, p0, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "decompressed"

    aget-object v7, p0, v3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object p0, p0, v6

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    array-length v0, p0

    if-le v0, v6, :cond_1

    aget-object v0, p0, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p0, p0, v3

    const-string/jumbo v0, "active"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p0, "!@ reboot by ApexManager"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "sys.powerctl"

    const-string/jumbo v0, "reboot,recoveryDecompressedApex"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/security/DigestInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->read()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method


# virtual methods
.method public final addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    if-nez v3, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    :goto_0
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iput-object v6, v7, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p4}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;

    move-result-object v4

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/ScanResult;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v7, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v8, -0x1

    iput v8, v7, Lcom/android/server/pm/InstallRequest;->mAppId:I

    sget-object v9, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v9, v7, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    iput-object v9, v7, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    iput-object v9, v7, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    iput-object v9, v7, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    iput v8, v7, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    iput v10, v7, Lcom/android/server/pm/InstallRequest;->mUserId:I

    goto :goto_1

    :cond_2
    iput v9, v7, Lcom/android/server/pm/InstallRequest;->mUserId:I

    :goto_1
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iput-object v0, v7, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iput-object v10, v7, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    move/from16 v11, p2

    iput v11, v7, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    iput v2, v7, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    iput-object v6, v7, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iput-object v10, v7, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    iput v8, v7, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    iput v9, v7, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    iput-object v5, v7, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    iput-boolean v9, v7, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    iput-boolean v9, v7, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    iput v9, v7, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    iput-object v10, v7, Lcom/android/server/pm/InstallRequest;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v7, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v11

    :try_start_1
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v12, v12, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v12, v10

    :goto_2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    iput-object v3, v7, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v3, v3, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iput-object v3, v7, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-eqz v12, :cond_6

    iput-object v12, v7, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    :cond_6
    :goto_3
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    :try_start_2
    iget-object v5, v6, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v12

    invoke-static {v5, v12}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object v10, v15

    iget-object v15, v10, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v17

    move-object/from16 v16, v10

    move-object v12, v13

    move-object v13, v5

    invoke-static/range {v11 .. v17}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    move-result-object v5

    const/high16 v10, 0x4000000

    and-int/2addr v2, v10

    if-nez v2, :cond_7

    invoke-virtual {v1, v7}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    move-result v2

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v2, v7, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v2, v2, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v2, v9

    :goto_4
    :try_start_3
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ReconciledPackage;

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_8

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_5
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    monitor-exit v2

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_8
    :goto_5
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v2, :cond_9

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v6, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/IncrementalProgressListener;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v4, v7, v5}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    :cond_9
    iget-object v2, v6, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget v3, v2, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_6
    iget-object v0, v6, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    monitor-exit v1

    goto :goto_6

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_a
    :goto_6
    iget-object v0, v6, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    return-object v0

    :catch_1
    move-exception v0

    move v9, v2

    :goto_7
    if-eqz v9, :cond_b

    :try_start_7
    invoke-virtual {v1, v7}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    :cond_b
    throw v0

    :goto_8
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_9
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 1

    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0, p2}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Overlay "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is static and cannot be upgraded."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0xf

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_1
    const/high16 p0, 0x480000

    and-int/2addr p0, p3

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p2

    if-ge p0, p2, :cond_8

    const-string/jumbo p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "System overlay "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of vendor overlays ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). This will become an install error in a future release"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 p2, 0x24

    if-ge p0, p2, :cond_8

    const-string/jumbo p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "System overlay "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of system overlays (36). This will become an install error in a future release"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p2

    const/16 p3, 0x1d

    if-ge p2, p3, :cond_5

    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string/jumbo v0, "android"

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Overlay "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must target Q or later, or be signed with the platform certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x10

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_5
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p2

    :try_start_2
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p3, :cond_8

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p2, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    if-eqz p3, :cond_7

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p2

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Overlay "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " signed with a different certificate than both the reference package and target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x12

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Overlay "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signed with different certificates, and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x11

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_8
    :goto_1
    return-void
.end method

.method public final assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 9

    and-int/lit8 v0, p2, 0x40

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v0, " code is missing"

    const-string/jumbo v3, "Package "

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v5

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-static {p2, p1, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    and-int/lit8 v0, p3, 0x10

    const/4 v3, 0x1

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    and-int/lit16 v4, p3, 0x1000

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    const/high16 v5, 0x4000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_7

    move v5, v3

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    const/4 v6, -0x5

    if-nez v0, :cond_8

    if-eqz v4, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an APEX package and can\'t be installed as an APK."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_21

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-interface {v0, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Package has null/no public keys for defined key-sets."

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Package has null defined key set."

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_f

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Package has upgrade-key-sets without corresponding definitions."

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_f
    :goto_8
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    const-string/jumbo p0, "PackageManager"

    const-string p2, "*************************************************"

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "PackageManager"

    const-string p2, "Core android package being redefined.  Skipping."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " codePath="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "PackageManager"

    const-string p1, "*************************************************"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Core android package being redefined.  Skipping."

    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    :cond_11
    :goto_9
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_15

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_12

    move v2, v3

    :cond_12
    if-eqz p3, :cond_14

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_14

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_14

    if-nez v2, :cond_14

    iget-object p2, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v1

    iget-wide v3, p3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long p2, v1, v3

    if-ltz p2, :cond_14

    goto :goto_a

    :cond_13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v1

    iget-wide v3, p3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_14

    :goto_a
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addDuplicatePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    iget-object p2, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addSystemPackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_14
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already installed.  Skipping duplicate."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_15
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez v1, :cond_17

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_b

    :cond_16
    const-string p0, "Duplicate static shared lib provider package"

    const/16 p1, -0xd

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_17
    :goto_b
    invoke-static {p1, p3}, Lcom/android/server/pm/ScanPackageUtils;->assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_18
    and-int/lit16 v2, p3, 0x80

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    iget-object v2, v2, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Relax SCAN_REQUIRE_KNOWN requirement for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_19
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto/16 :goto_c

    :cond_1a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " found at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but expected at "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x17

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1b
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found at first boot, but allow data preload apps to be installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_1c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x13

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1d
    :goto_c
    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->assertProvidersNotDefined(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_1e
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    :cond_1f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p2

    if-lt p2, p0, :cond_20

    monitor-exit v0

    return-void

    :cond_20
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p3, "No signature found in package of version "

    const-string v1, " or newer for package "

    invoke-static {p0, p3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x67

    invoke-direct {p2, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    :goto_d
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_21
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Package has invalid signing-key-set."

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Passed invalid package to keyset validation."

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Code and resource paths haven\'t been set correctly"

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 5

    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v2
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Apps that share a user with a privileged app must themselves be marked as privileged. "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shares privileged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x13

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    iget-object v7, v0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v12

    cmp-long v10, v10, v12

    const-wide/16 v11, 0x1

    if-gez v10, :cond_0

    add-long/2addr v8, v11

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v13

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-lez v7, :cond_1

    sub-long/2addr v8, v11

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-wide v1, v8

    move-wide v3, v1

    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-ltz v0, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "Static shared lib version codes must be ordered as lib versions"

    const/16 v1, -0xe

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0
.end method

.method public final cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_0
    return-void
.end method

.method public final commitInstallPackages(Ljava/util/List;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/pm/ReconciledPackage;

    iget-object v9, v3, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v3, v9, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v3

    const-string/jumbo v7, "installPackageLI"

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/server/pm/PackageFreezer;

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v3, v4, v9}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v10, 0x0

    const/4 v6, -0x1

    const/16 v8, 0x10

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object v3

    :goto_1
    iput-object v3, v9, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0x40000

    :try_start_1
    const-string/jumbo v0, "commitPackages"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/InstallPackageHelper;->commitPackagesLocked(Ljava/util/List;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->performSpegIfNeeded(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->executePostCommitStepsLIF(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public final commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v1, v10, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    iget v11, v10, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    iget v1, v10, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    move v14, v13

    goto :goto_0

    :cond_0
    move v14, v12

    :goto_0
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v15, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "Replacing default ResolverActivity with custom activity: "

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_0
    iput-boolean v13, v15, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    sget-object v4, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    move-object v6, v2

    const-wide/16 v2, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    :try_start_1
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput v12, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const v3, 0x10320

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    iput v12, v2, Landroid/content/pm/ActivityInfo;->theme:I

    iput-boolean v13, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    iput-boolean v13, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    iget-object v3, v15, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput v12, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iput v12, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iput v12, v3, Landroid/content/pm/ResolveInfo;->match:I

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    iput-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v15, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v17

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    :goto_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move-object/from16 v1, p1

    move-object/from16 v6, p2

    :goto_2
    const/4 v15, 0x0

    if-eqz v7, :cond_2

    iget-wide v2, v7, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iget-wide v4, v6, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    invoke-virtual {v6, v15}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    :cond_2
    iget-object v2, v6, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    const/4 v3, 0x2

    if-nez v2, :cond_5

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/app-metadata/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v4, "/app.metadata"

    invoke-static {v2, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, v10, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    if-eqz v4, :cond_4

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    :cond_5
    :goto_3
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    :try_start_2
    iput-object v1, v2, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v5, v4

    :try_start_3
    sget-object v4, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v3

    const-wide/16 v2, 0x0

    move-object/from16 v15, v17

    :try_start_4
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v15, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-nez v1, :cond_6

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-class v2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "system:ui"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput v12, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v2, 0x3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const v2, 0x11220

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const v2, 0x1030226

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    iput-boolean v13, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    iput-boolean v13, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    const/4 v2, 0x2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/16 v2, 0xdb0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput v12, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iput v12, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iput v12, v2, Landroid/content/pm/ResolveInfo;->match:I

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v15, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v16, v4

    :goto_5
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_7
    :goto_6
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v4, v8, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    new-instance v5, Landroid/util/ArrayMap;

    iget-object v2, v8, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, v8, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v5, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v2, v8, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    iget-object v2, v8, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v5, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryChanges(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/List;Ljava/util/Map;I)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v19, v6

    move-object v6, v3

    move/from16 v3, v19

    iput-object v1, v10, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    and-int/lit16 v4, v3, 0x400

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    and-int/lit16 v4, v3, 0x800

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v4, v9}, Lcom/android/server/pm/Computer;->checkPackageFrozen(Ljava/lang/String;)V

    :goto_8
    iget-boolean v4, v10, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-eqz v1, :cond_d

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eqz v4, :cond_d

    :cond_c
    move v5, v12

    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_d

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v8

    const-string/jumbo v15, "update lib"

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, -0x1

    const/16 v12, 0xc

    invoke-static {v9, v8, v11, v15, v12}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x0

    goto :goto_9

    :cond_d
    const-string/jumbo v1, "updateSettings"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_6
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v11, v11, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v11}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v11

    if-nez v11, :cond_e

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v11, v12, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_e
    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    if-eqz v11, :cond_f

    iget-object v12, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v15, v12, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v15}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v15

    if-nez v15, :cond_f

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v15

    iput-object v15, v12, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :cond_f
    invoke-virtual {v5, v6, v11}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x800000

    and-int/2addr v5, v3

    if-eqz v5, :cond_10

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/ApexManager;->registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V

    goto :goto_a

    :catchall_5
    move-exception v0

    goto/16 :goto_13

    :cond_10
    :goto_a
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    if-eqz v4, :cond_13

    :cond_12
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v11, v5

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_13

    aget v15, v5, v12

    invoke-virtual {v6, v15}, Lcom/android/server/pm/PackageSetting;->restoreComponentSettings(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_13
    const/high16 v5, 0x4000000

    and-int/2addr v5, v3

    if-nez v5, :cond_14

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/KeySetManagerService;->addScannedPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_14
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v11, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    invoke-virtual {v12, v2, v11, v5}, Lcom/android/server/pm/resolution/ComponentResolver;->addAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/Computer;)V

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_15

    move v3, v13

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v11, v5, v6, v4, v3}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->addAllPackageProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v3

    sget-object v4, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/high16 v4, 0x8000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_16

    goto :goto_d

    :cond_16
    const/4 v13, 0x0

    :goto_d
    if-nez v13, :cond_19

    if-eqz v7, :cond_18

    iget-object v3, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v3, :cond_17

    goto :goto_e

    :cond_17
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v4, v10, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v3, v7, v6, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->migrateState(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/verify/domain/DomainSet;)V

    goto :goto_f

    :cond_18
    :goto_e
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v4, v10, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addPackage(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/verify/domain/DomainSet;)V

    :cond_19
    :goto_f
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v3

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_10
    if-ge v12, v3, :cond_1c

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v7, v4}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_1b

    if-nez v15, :cond_1a

    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_11

    :cond_1a
    const/16 v5, 0x20

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_11
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_1c
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3

    goto :goto_12

    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    throw v0

    :cond_1d
    :goto_12
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageAdded(Lcom/android/server/pm/PackageSetting;)V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_13
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final commitPackagesLocked(Ljava/util/List;[I)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x2

    if-eqz v0, :cond_4e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/ReconciledPackage;

    iget-object v13, v12, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v14, v13, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v14}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    const/4 v15, 0x1

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/server/pm/AsecInstallHelper;->ASEC_INTERNAL_PATH:Ljava/lang/String;

    iget v0, v2, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    invoke-direct {v3, v10}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(I)V

    iput-object v1, v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object v0, v3, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_1
    iget-boolean v0, v13, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    if-nez v2, :cond_2

    const-wide/16 v16, 0x0

    goto :goto_2

    :cond_2
    iget-object v5, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v5, v5, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const-wide/16 v16, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    invoke-interface {v2, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v10

    cmp-long v8, v10, v16

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v8

    iput-wide v10, v8, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    invoke-virtual {v8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v2, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v2, v2, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2, v7, v8}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v2, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v2, v2, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget v5, v13, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v10

    cmp-long v2, v10, v16

    if-nez v2, :cond_5

    iget-object v2, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v2, v2, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2, v5, v7, v8}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    :cond_5
    iget-object v2, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v7, v5, v8, v6, v10}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    iget-boolean v2, v13, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    new-instance v5, Lcom/android/server/pm/CleanUpArgs;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v0}, Lcom/android/server/pm/CleanUpArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v2, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    :cond_6
    :goto_3
    move-object v11, v3

    goto :goto_8

    :cond_7
    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iput-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    goto :goto_3

    :cond_8
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;
    :try_end_0
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v3

    :try_start_1
    iget-object v3, v12, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    iget-boolean v8, v13, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    iget-object v0, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v10, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v5

    const/4 v5, 0x1

    move-object v11, v7

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_5
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_0
    move-object v11, v5

    goto :goto_5

    :catch_1
    move-object v11, v3

    :catch_2
    :goto_5
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    iget v0, v13, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v0, v15, :cond_a

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v14}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v2, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    move v5, v15

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    iput-boolean v5, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    :cond_a
    :goto_8
    invoke-virtual {v1, v12, v6}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    const-string/jumbo v0, "updateSettingsInternal"

    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_b

    const/4 v5, 0x0

    goto :goto_9

    :cond_b
    iget v5, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    :goto_9
    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iget v12, v13, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 v14, -0x1

    if-eq v12, v14, :cond_c

    const/4 v7, -0x2

    if-eq v12, v7, :cond_c

    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7, v12}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v7

    if-nez v7, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "User "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist or has been removed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x26

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {v13, v11, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    move-object/from16 v24, v4

    move-object/from16 v22, v9

    goto/16 :goto_2c

    :cond_c
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-static {v7, v15}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v17, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v8

    :try_start_6
    iget-object v15, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    if-eqz v15, :cond_3b

    invoke-virtual {v15, v6}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v11

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v21

    if-eqz v21, :cond_13

    iget-object v14, v13, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v14, :cond_d

    const/4 v14, 0x0

    goto :goto_a

    :cond_d
    iget-boolean v14, v14, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    :goto_a
    if-nez v14, :cond_11

    array-length v14, v11

    move-object/from16 v22, v9

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v14, :cond_10

    move/from16 v23, v9

    aget v9, v11, v23

    move/from16 v24, v14

    const/4 v14, -0x1

    if-eq v12, v14, :cond_e

    if-ne v12, v9, :cond_f

    :cond_e
    const/4 v14, 0x0

    goto :goto_c

    :cond_f
    const/4 v14, 0x0

    goto :goto_d

    :goto_c
    invoke-virtual {v15, v14, v9, v10}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :goto_d
    add-int/lit8 v9, v23, 0x1

    move/from16 v14, v24

    goto :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_3d

    :cond_10
    :goto_e
    const/4 v14, 0x0

    goto :goto_f

    :cond_11
    move-object/from16 v22, v9

    goto :goto_e

    :goto_f
    array-length v9, v6

    :goto_10
    if-ge v14, v9, :cond_12

    move/from16 v23, v9

    aget v9, v6, v14

    move/from16 v24, v14

    invoke-static {v11, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v14

    invoke-virtual {v15, v9, v14}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    add-int/lit8 v14, v24, 0x1

    move/from16 v9, v23

    goto :goto_10

    :cond_12
    array-length v9, v6

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v9, :cond_14

    move/from16 v23, v9

    aget v9, v6, v14

    invoke-virtual {v15, v9}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v9

    move/from16 v24, v14

    const/4 v14, 0x0

    iput-object v14, v9, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    add-int/lit8 v14, v24, 0x1

    move/from16 v9, v23

    goto :goto_11

    :cond_13
    move-object/from16 v22, v9

    :cond_14
    iget-object v9, v15, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v9, v9, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, v15, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v9, v9, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    move-object/from16 v23, v9

    array-length v9, v6

    move-object/from16 v24, v4

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v9, :cond_17

    move/from16 v25, v4

    aget v4, v6, v25

    move/from16 v26, v9

    iget-object v9, v14, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v9

    move-object/from16 v27, v7

    const/4 v7, 0x1

    if-eq v9, v7, :cond_15

    goto :goto_14

    :cond_15
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v14, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-nez v7, :cond_16

    goto :goto_14

    :cond_16
    iget-object v9, v14, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v7

    invoke-virtual {v15, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_14
    add-int/lit8 v4, v25, 0x1

    move/from16 v9, v26

    move-object/from16 v7, v27

    goto :goto_13

    :cond_17
    move-object/from16 v9, v23

    move-object/from16 v4, v24

    goto :goto_12

    :cond_18
    move-object/from16 v24, v4

    move-object/from16 v27, v7

    const/4 v14, -0x1

    if-eq v12, v14, :cond_1e

    const/4 v7, 0x1

    invoke-virtual {v15, v12, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    invoke-static {v13, v12, v10}, Lcom/android/server/pm/PmHook;->installSuccessLog(Lcom/android/server/pm/InstallRequest;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_19

    const/4 v14, 0x0

    :try_start_7
    invoke-interface {v0, v3, v14, v12}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "This app can not be enabled due to EDM policy. packageName = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_16

    :catch_3
    move-exception v0

    :try_start_8
    const-string/jumbo v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RemoteException - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_15

    :cond_1a
    iget-boolean v0, v0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    :goto_15
    if-nez v0, :cond_1c

    invoke-virtual {v15, v12}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "auto_disabler"

    invoke-virtual {v15, v12}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_16

    :cond_1b
    const/4 v14, 0x0

    invoke-virtual {v15, v14, v12, v10}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_1c
    :goto_16
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v0, v15, v12}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    array-length v4, v6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eq v4, v7, :cond_29

    const/4 v4, 0x0

    :goto_17
    array-length v7, v6

    if-ge v4, v7, :cond_29

    aget v7, v6, v4

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-nez v9, :cond_1d

    const/4 v14, 0x0

    invoke-virtual {v15, v7, v14}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1e
    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_18

    :cond_1f
    const/4 v0, 0x0

    :goto_18
    array-length v4, v6

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v4, :cond_29

    aget v9, v6, v7

    sget-object v14, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v14, v9}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v14

    if-eqz v14, :cond_21

    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v23, v0

    iget-object v0, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v14, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v14, "no_debugging_features"

    invoke-virtual {v0, v14, v9}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v4

    const-string/jumbo v4, "isAdbInstallDisallowed : false , currentUserId : "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_20
    :goto_1a
    move/from16 v25, v4

    goto :goto_1b

    :cond_21
    move/from16 v23, v0

    goto :goto_1a

    :goto_1b
    if-eqz v23, :cond_22

    invoke-static {v11, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_1c

    :cond_22
    const/4 v0, 0x0

    :goto_1c
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v14, "no_install_apps"

    invoke-virtual {v4, v9, v14}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v14, "no_debugging_features"

    invoke-virtual {v4, v9, v14}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_1d

    :cond_23
    const/4 v4, 0x0

    goto :goto_1e

    :cond_24
    :goto_1d
    const/4 v4, 0x1

    :goto_1e
    if-nez v0, :cond_25

    if-nez v4, :cond_26

    :cond_25
    const/4 v4, 0x1

    goto :goto_1f

    :cond_26
    const/4 v14, 0x0

    invoke-virtual {v15, v9, v14}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto :goto_21

    :goto_1f
    invoke-virtual {v15, v9, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    invoke-static {v13, v9, v10}, Lcom/android/server/pm/PmHook;->installSuccessLog(Lcom/android/server/pm/InstallRequest;ILjava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    goto :goto_20

    :cond_27
    iget-boolean v0, v0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    :goto_20
    if-nez v0, :cond_28

    const/4 v14, 0x0

    invoke-virtual {v15, v14, v9, v10}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_28
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v0, v15, v9}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    :goto_21
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v23

    move/from16 v4, v25

    goto/16 :goto_19

    :cond_29
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v4, :cond_2a

    iget-object v4, v4, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_22
    if-ge v7, v4, :cond_2a

    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    iget-object v10, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v15, v9}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v11

    iput v10, v11, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class v14, Landroid/content/pm/PackageManager$InstallReason;

    move/from16 v23, v4

    const/4 v4, 0x0

    invoke-static {v14, v4, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {v11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v23

    goto :goto_22

    :cond_2a
    iget-object v4, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v4, :cond_2b

    iget-object v4, v4, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    :goto_23
    iget-object v7, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_2b

    iget-object v7, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {v15, v9, v7}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_2b
    const/4 v14, -0x1

    if-ne v12, v14, :cond_2d

    array-length v4, v6

    const/4 v7, 0x0

    :goto_24
    if-ge v7, v4, :cond_2e

    aget v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    invoke-virtual {v15, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-virtual {v15, v9}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v9

    iput v5, v9, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class v10, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v11, 0x0

    invoke-static {v10, v11, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_2d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {v15, v12}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    iput v5, v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class v4, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v11, 0x0

    invoke-static {v4, v11, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_2e
    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v4, :cond_2f

    new-instance v5, Lcom/android/server/pm/IncrementalProgressListener;

    iget-object v7, v15, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v5, v9, v7}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    :cond_2f
    array-length v0, v6

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v0, :cond_31

    aget v4, v6, v5

    invoke-virtual {v15, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v14, 0x0

    invoke-virtual {v15, v14, v4}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_31
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_32

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_32
    iget-object v4, v13, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_33

    const/4 v4, 0x0

    goto :goto_27

    :cond_33
    iget-object v4, v4, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    :goto_27
    if-eqz v4, :cond_34

    goto :goto_28

    :cond_34
    const/4 v4, 0x0

    :cond_35
    :goto_28
    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v5

    const/high16 v7, 0x400000

    and-int/2addr v5, v7

    if-eqz v5, :cond_36

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_29

    :cond_36
    iget-object v5, v13, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v5, :cond_37

    const/4 v5, 0x0

    goto :goto_29

    :cond_37
    iget-object v5, v5, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    :goto_29
    if-eqz v5, :cond_38

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_38
    iget-object v5, v13, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v5, :cond_39

    const/4 v11, 0x3

    goto :goto_2a

    :cond_39
    iget v11, v5, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    :goto_2a
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v7, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    if-nez v4, :cond_3a

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    :cond_3a
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v4, v7, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    iput-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iput v11, v7, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAutoRevokePermissionsMode:I

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-virtual {v5, v2, v7, v12}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    goto :goto_2b

    :cond_3b
    move-object/from16 v24, v4

    move-object/from16 v27, v7

    move-object/from16 v22, v9

    :goto_2b
    iput-object v3, v13, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    iput v0, v13, Lcom/android/server/pm/InstallRequest;->mAppId:I

    iput-object v2, v13, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 v7, 0x1

    iput v7, v13, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    const-string/jumbo v0, "writeSettings"

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v5, v27

    const/4 v14, 0x0

    invoke-virtual {v0, v5, v14}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;Z)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :goto_2c
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v4, v24

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_43

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    invoke-virtual {v13}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v0, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    iput-object v0, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    iput-object v0, v13, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    iput-object v0, v13, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    if-eqz v0, :cond_41

    array-length v0, v0

    if-nez v0, :cond_3c

    goto :goto_2f

    :cond_3c
    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v5, v0

    const/4 v7, 0x0

    :goto_2d
    if-ge v7, v5, :cond_40

    aget v8, v0, v7

    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    iget-object v10, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v10, v10, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-interface {v10, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v10

    if-nez v9, :cond_3e

    if-eqz v10, :cond_3d

    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    goto :goto_2e

    :cond_3d
    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    goto :goto_2e

    :cond_3e
    if-eqz v10, :cond_3f

    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v13, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    goto :goto_2e

    :cond_3f
    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v13, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    :goto_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_40
    const/4 v5, 0x2

    const/4 v14, 0x0

    goto :goto_32

    :cond_41
    :goto_2f
    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v5, v0

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v5, :cond_40

    aget v8, v0, v7

    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v9, v9, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-interface {v9, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_42

    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    goto :goto_31

    :cond_42
    iget-object v9, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v13, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    :goto_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :goto_32
    invoke-virtual {v3, v5, v14}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_43
    iget v0, v13, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4c

    :try_start_9
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, v13, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v5

    const/16 v20, 0x0

    aget v5, v5, v20

    invoke-interface {v0, v4, v2, v5}, Landroid/content/pm/IASKSManager;->postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_33

    :catch_4
    move-exception v0

    const-string/jumbo v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Exception during postASKSsetup() : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_33
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v13, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    iget-object v7, v13, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    iget-object v8, v13, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_4b

    if-eqz v5, :cond_4b

    iget-object v0, v5, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    if-eqz v0, :cond_4b

    if-eqz v7, :cond_4b

    if-eqz v8, :cond_4b

    array-length v0, v8

    if-nez v0, :cond_44

    goto/16 :goto_3c

    :cond_44
    const/4 v11, 0x0

    iput-object v11, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 v0, 0x10

    const/4 v9, 0x1

    invoke-virtual {v3, v0, v9}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    array-length v0, v8

    const/4 v10, 0x0

    :goto_34
    if-ge v10, v0, :cond_45

    aget v11, v8, v10

    invoke-virtual {v3, v11}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v11}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    :cond_45
    const/4 v14, 0x0

    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string/jumbo v0, "PackageManager"

    const-string v2, "Can\'t create archive state: responsible installer is empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    :cond_46
    array-length v10, v8

    move v11, v14

    :goto_35
    if-ge v11, v10, :cond_4b

    aget v12, v8, v11

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string/jumbo v14, "PackageArchiverService"

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    invoke-interface {v2, v9, v6, v7, v12}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_47

    const-string v0, "Couldn\'t find installer "

    invoke-static {v0, v9, v14}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    move-object/from16 v19, v5

    move-object/from16 v20, v8

    :goto_37
    const/4 v0, 0x0

    goto/16 :goto_3b

    :cond_47
    if-nez v15, :cond_48

    const-string v0, "Couldn\'t get the title of the installer"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_48
    iget-object v0, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    new-instance v2, Landroid/content/pm/ArchivedPackageInfo;

    invoke-direct {v2, v5}, Landroid/content/pm/ArchivedPackageInfo;-><init>(Landroid/content/pm/ArchivedPackageParcel;)V

    :try_start_a
    invoke-virtual {v2}, Landroid/content/pm/ArchivedPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/ArchivedPackageInfo;->getLauncherActivities()Ljava/util/List;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v19, v5

    :try_start_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move-object/from16 v20, v8

    const/4 v8, 0x0

    :goto_38
    if-ge v8, v5, :cond_49

    :try_start_c
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ArchivedActivityInfo;

    move-object/from16 p1, v2

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ArchivedActivityInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v23, v5

    mul-int/lit8 v5, v8, 0x2

    invoke-static {v6, v2, v12, v5, v0}, Lcom/android/server/pm/PackageArchiver;->storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object v2

    move/from16 v24, v5

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ArchivedActivityInfo;->getMonochromeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move/from16 v25, v8

    add-int/lit8 v8, v24, 0x1

    invoke-static {v6, v5, v12, v8, v0}, Lcom/android/server/pm/PackageArchiver;->storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object v5

    new-instance v8, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ArchivedActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v24

    move/from16 v26, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v6

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ArchivedActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {v8, v0, v6, v2, v5}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v25, 0x1

    move-object/from16 v2, p1

    move/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v0, v26

    goto :goto_38

    :catch_5
    move-exception v0

    goto :goto_3a

    :cond_49
    new-instance v0, Lcom/android/server/pm/pkg/ArchiveState;

    invoke-direct {v0, v15, v7}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3b

    :catch_6
    move-exception v0

    :goto_39
    move-object/from16 v20, v8

    goto :goto_3a

    :catch_7
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_39

    :goto_3a
    const-string v2, "Failed to create archive state"

    invoke-static {v14, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    :goto_3b
    if-eqz v0, :cond_4a

    invoke-virtual {v3, v12}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v2

    iput-object v0, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_4a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, p2

    move-object/from16 v2, v16

    move-object/from16 v7, v18

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    const/4 v14, 0x0

    goto/16 :goto_35

    :cond_4b
    :goto_3c
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v13, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    const/4 v11, 0x0

    iput-object v11, v3, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v11, v3, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mDeveloperVerificationStatus:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->mDeveloperVerificationStatusInternal:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    :cond_4c
    iget-object v0, v13, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_4d

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_4d
    move-object/from16 v6, p2

    move-object/from16 v9, v22

    goto/16 :goto_0

    :goto_3d
    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_4e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    const/4 v1, 0x3

    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/android/server/pm/PackageMetrics;->reportCacheInvalidationEvent(II)V

    invoke-static {}, Landroid/app/AppOpsManager;->invalidateCheckPackageCache()V

    return-void
.end method

.method public final commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string/jumbo v5, "android"

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    invoke-interface {v3, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_0
    iget v5, v2, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v6, v6, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v6, v6, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v7, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v7, v7, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v8, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v8, v8, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v8, v8, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v9, v9, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v9, v9, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v11, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v11, v11, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v11, v11, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v9, v11}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    if-eqz v9, :cond_1

    if-eq v9, v11, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v11, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v11, v11, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v11, v11, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v9, v11}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11, v9, v4}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    iget v9, v9, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iget-object v11, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v11, :cond_1

    iput v9, v11, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    iput-boolean v10, v11, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-boolean v9, v9, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v7, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v7, v7, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    iget-object v9, v9, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v7, v9}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object v15, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    if-eqz v7, :cond_4

    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v13

    invoke-static {v3, v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v7, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v7, v12}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v15, v9

    :goto_2
    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v15}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, v15}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    :cond_5
    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v9, :cond_6

    iget-boolean v9, v9, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x4

    invoke-virtual {v15, v9, v10}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_6
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v9

    const/high16 v12, 0x4000000

    and-int/2addr v12, v5

    if-eqz v12, :cond_7

    move v12, v10

    goto :goto_3

    :cond_7
    move v12, v4

    :goto_3
    if-eqz v6, :cond_8

    move v13, v10

    goto :goto_4

    :cond_8
    move v13, v4

    :goto_4
    if-eqz v13, :cond_9

    iget-object v14, v6, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v14, v14, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    if-nez v12, :cond_a

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v16

    if-nez v16, :cond_b

    :cond_a
    move/from16 v16, v10

    goto :goto_6

    :cond_b
    move/from16 v16, v10

    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_7

    :goto_6
    const/4 v4, 0x0

    :goto_7
    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v10, v10, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v14, :cond_c

    move/from16 v11, v16

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    :goto_8
    const/high16 v18, 0x2000000

    if-eqz v9, :cond_1f

    iget-object v4, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v19, v5

    iget-object v5, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-ne v4, v5, :cond_d

    goto :goto_9

    :cond_d
    iget-object v5, v9, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    move-object/from16 v22, v4

    iget-object v4, v9, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    move-object/from16 v24, v4

    iget-object v4, v9, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    move-object/from16 v25, v4

    iget v4, v9, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    move/from16 v20, v4

    iget-object v4, v9, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    move-object/from16 v26, v4

    iget-object v4, v9, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    move-object/from16 v27, v4

    iget v4, v9, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    move/from16 v21, v4

    iget-boolean v4, v9, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    iget-boolean v9, v9, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    move/from16 v28, v4

    move-object/from16 v23, v5

    move/from16 v29, v9

    invoke-static/range {v20 .. v29}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_9

    :cond_e
    move/from16 v19, v5

    :cond_f
    :goto_9
    if-nez v12, :cond_1d

    iget v4, v9, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_10

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_a

    :cond_10
    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    :goto_a
    if-eqz v13, :cond_12

    if-ltz v4, :cond_11

    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_b

    :cond_11
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v4

    array-length v4, v4

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v5

    if-gt v4, v5, :cond_12

    :goto_b
    move/from16 v4, v16

    goto :goto_c

    :cond_12
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v5

    and-int v5, v5, v18

    if-eqz v5, :cond_13

    move/from16 v5, v16

    goto :goto_d

    :cond_13
    const/4 v5, 0x0

    :goto_d
    iget-object v12, v9, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v14, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    move/from16 v20, v4

    iget-object v4, v9, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-nez v4, :cond_14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v21, v5

    move-object/from16 v22, v8

    move/from16 v23, v10

    :goto_e
    const/4 v4, 0x0

    goto :goto_10

    :cond_14
    move/from16 v21, v5

    iget-object v5, v14, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5

    move-object/from16 v22, v8

    :try_start_0
    iget-object v8, v14, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_f
    if-ltz v8, :cond_16

    move/from16 v23, v10

    iget-object v10, v14, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    monitor-exit v5

    move/from16 v4, v16

    goto :goto_10

    :catchall_0
    move-exception v0

    goto :goto_15

    :cond_15
    add-int/lit8 v8, v8, -0x1

    move/from16 v10, v23

    goto :goto_f

    :cond_16
    move/from16 v23, v10

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_e

    :goto_10
    if-nez v20, :cond_1b

    if-eqz v21, :cond_17

    if-nez v23, :cond_17

    if-eqz v4, :cond_18

    :cond_17
    const/4 v4, 0x0

    goto :goto_14

    :cond_18
    if-nez v11, :cond_1a

    if-nez v13, :cond_19

    goto :goto_12

    :cond_19
    :goto_11
    const/4 v4, 0x0

    goto :goto_13

    :cond_1a
    :goto_12
    if-eqz v11, :cond_1e

    if-nez v12, :cond_1e

    goto :goto_11

    :goto_13
    invoke-virtual {v9, v4}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_16

    :goto_14
    invoke-virtual {v9, v4}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_16

    :cond_1b
    const/4 v4, 0x0

    if-eqz v12, :cond_1c

    if-nez v11, :cond_1e

    :cond_1c
    invoke-virtual {v9, v4}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v9

    goto :goto_16

    :goto_15
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1d
    move-object/from16 v22, v8

    :cond_1e
    :goto_16
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v9, v15, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_19

    :cond_1f
    move/from16 v19, v5

    move-object/from16 v22, v8

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v11, :cond_20

    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    move/from16 v5, v16

    goto :goto_17

    :cond_20
    const/4 v5, 0x0

    :goto_17
    if-eqz v13, :cond_22

    if-eqz v5, :cond_21

    goto :goto_18

    :cond_21
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    goto :goto_19

    :cond_22
    :goto_18
    invoke-virtual {v15, v4}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    :cond_23
    :goto_19
    const/high16 v4, 0x800000

    and-int v4, v19, v4

    if-eqz v4, :cond_25

    and-int v4, v19, v18

    if-eqz v4, :cond_24

    move/from16 v4, v16

    goto :goto_1a

    :cond_24
    const/4 v4, 0x0

    :goto_1a
    iget-object v5, v15, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v5, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    iget-object v4, v5, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_25
    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v5, v2, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v4, v15, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-nez v4, :cond_26

    goto :goto_1d

    :cond_26
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_27

    goto :goto_1d

    :cond_27
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    if-nez v6, :cond_29

    sget-object v8, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    goto :goto_1c

    :cond_29
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    :goto_1c
    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v15, v9}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_28

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    goto :goto_1b

    :cond_2a
    :goto_1d
    if-eqz v22, :cond_2b

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-object v3, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v3, :cond_2c

    if-eqz v6, :cond_2d

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_2c
    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v3, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    iget-object v4, v13, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, p2

    move-object/from16 v18, v3

    :try_start_2
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2d
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-boolean v4, v1, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    if-eqz v4, :cond_2e

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    :cond_2e
    iget-boolean v3, v1, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    if-eqz v3, :cond_2f

    if-eqz v7, :cond_2f

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v7, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iget-object v3, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v1, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v4, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :cond_2f
    iget-object v3, v1, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-object v4, v15, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v3, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, v14, v15, v6, v1}, Lcom/android/server/pm/InstallPackageHelper;->commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V

    invoke-virtual {v15, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget v3, v15, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    :cond_30
    iget-object v1, v15, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    iget v1, v15, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_31

    iput v2, v15, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_31
    invoke-static {v15}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(I)V

    iput-object v0, v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object v15, v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-object v14

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V
    .locals 14

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    iget v3, v2, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    const/16 v4, -0x28

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManagerInternal;

    iget-object v5, v3, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/pm/InstallRequest;->mAppId:I

    invoke-virtual {v4, v5, v6}, Landroid/app/AppOpsManagerInternal;->onPackageAdded(Ljava/lang/String;I)V

    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    iget v5, v4, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    :goto_2
    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    iget-object v4, v4, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v4

    :goto_3
    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v6, :cond_7

    const/4 v6, 0x0

    :goto_4
    move-object v8, v6

    goto :goto_5

    :cond_7
    iget-object v6, v6, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_4

    :goto_5
    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_8

    move v11, v0

    goto :goto_6

    :cond_8
    iget v4, v4, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    move v11, v4

    :goto_6
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v6, p2

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0, v3}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_7

    :cond_b
    move-object/from16 v6, p2

    goto :goto_7

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_e
    iget v4, v3, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v4, v1, :cond_d

    iput v0, v3, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    goto :goto_8

    :cond_f
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    if-eqz p3, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_11

    move-object/from16 v0, p4

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v2, v1, :cond_10

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    return-void

    :goto_a
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    const/4 p2, -0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    :goto_0
    const-string/jumbo v0, "android"

    const/4 v1, 0x2

    if-ne p1, p2, :cond_1

    array-length p1, p3

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    aget v2, p3, p2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget-object v4, p2, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p2, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    invoke-virtual {v2, v1, v5, v4}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-virtual {v2, v1, v5, v4}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-eq v1, v3, :cond_3

    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v4, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-eq v4, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "PackageManager"

    iget v2, p1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iget-object v3, p1, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v4

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    if-ne v2, v6, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p2, v5

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p2, v0, v5}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    if-ne v2, v6, :cond_b

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v2

    const/high16 v3, 0x200000

    and-int/2addr p0, v3

    if-eqz p0, :cond_5

    invoke-static {v5}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    if-eqz v6, :cond_7

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v0, v2, p0}, Landroid/os/incremental/IncrementalManager;->linkCodePath(Ljava/io/File;Ljava/io/File;)V

    goto :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/16 v0, -0x14

    if-nez v6, :cond_9

    invoke-static {p0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    const-string p0, "Failed to restorecon"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_7

    :cond_a
    :goto_6
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->updateAllCodePaths(Ljava/util/List;)V

    return-void

    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get path: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/android/server/pm/PrepareFailure;

    invoke-static {p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :goto_8
    const-string p1, "Failed to rename"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v2, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_0
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1, v2, p3}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1, p2}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {v0, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p0

    :try_start_1
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    iget-object p2, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object p1, p2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p1

    :cond_3
    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final executePostCommitStepsLIF(Ljava/util/List;)V
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ReconciledPackage;

    iget-object v1, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v3, v1}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Install: null storage for incremental package "

    invoke-static {p1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-boolean p0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const-string/jumbo p0, "native_lib_extract"

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {v1}, Landroid/os/incremental/IncrementalStorage;->waitForNativeBinariesExtraction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    return-void

    :goto_2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw p1
.end method

.method public final getNewUsers(Lcom/android/server/pm/InstallRequest;[I)[I
    .locals 11

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v0, p1, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const-string v1, " doesn\'t exist or has been removed"

    const-string/jumbo v2, "User "

    const/16 v3, -0x26

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/4 v5, -0x2

    if-eq v0, v5, :cond_1

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    if-eq v0, v4, :cond_2

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_4

    :cond_2
    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    array-length v4, p2

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v4, :cond_7

    aget v8, p2, v7

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    const-string/jumbo v10, "no_install_apps"

    invoke-virtual {p0, v8, v10}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "no_debugging_features"

    invoke-virtual {p0, v8, v10}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v10, v6

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-nez v9, :cond_5

    if-nez v10, :cond_6

    :cond_5
    invoke-virtual {v5, v8}, Landroid/util/IntArray;->add(I)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 7

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    and-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "PackageManager"

    const-string v4, " to "

    const-string/jumbo v5, "Unable to update from "

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": old package not in system partition"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": old package still exists"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to migrate data from "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": old shared user settings name "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " differs from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 10

    const-string/jumbo v0, "parsePackage"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_0
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, p1, p2, v0}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    iget p2, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scanPackage ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final installExistingPackageAsUser(Ljava/lang/String;IIILandroid/content/IntentSender;)Landroid/util/Pair;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v3, p2

    move/from16 v2, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    const/16 v0, -0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v5, -0x6e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.permission.INSTALL_EXISTING_PACKAGES"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Neither user "

    const-string v2, " nor current process has android.permission.INSTALL_PACKAGES."

    invoke-static {v7, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v5, 0x7d0

    if-ne v7, v5, :cond_2

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x4d

    if-eq v3, v5, :cond_2

    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Not allowed to install-existing on user "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    const-string/jumbo v6, "installExistingPackage for user "

    invoke-static {v3, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    move v8, v3

    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    move v9, v7

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v7, "no_install_apps"

    invoke-virtual {v6, v3, v7}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v9, v3, v6}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(IIZ)Z

    move-result v0

    const/4 v7, -0x1

    if-nez v0, :cond_4

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "installExistingPackageAsUser the app with uid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not installed via approved installer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_4
    const-string/jumbo v0, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "verifying app can be installed or not for user - "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v8

    :try_start_0
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v10, v10, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_6

    :try_start_1
    iget-object v8, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v8, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v15

    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v10}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v15, :cond_5

    array-length v10, v15

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_5

    aget-object v17, v15, v7

    move/from16 v18, v7

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v18, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0, v4, v8, v6, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v6, "This app installation is not allowed"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catch_0
    :cond_6
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v10, 0x1

    if-eqz v0, :cond_a

    :try_start_3
    invoke-interface {v0, v3, v10}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v7, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    if-nez v7, :cond_7

    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_7
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v7, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-static {v7}, Lcom/android/server/pm/InstallPackageHelper;->isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v7, "This admin app installation is not allowed"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v6

    return-object v0

    :cond_8
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v7, "This admin app installation is allowed"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v6

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    int-to-long v6, v0

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v1, v8, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput v3, v8, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-object v4, v8, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-wide v6, v8, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;->f$3:J

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_b

    move v0, v10

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    and-int/lit16 v6, v2, 0x4000

    if-eqz v6, :cond_c

    move v6, v10

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :goto_5
    :try_start_6
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    move-result v7

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    if-eqz v8, :cond_d

    invoke-virtual {v8, v3, v4}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    move v8, v10

    goto :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_1c

    :cond_d
    const/4 v8, 0x0

    :goto_6
    iget-object v15, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v19, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_2a

    move/from16 v20, v7

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v7, :cond_e

    goto/16 :goto_1a

    :cond_e
    if-eqz v0, :cond_10

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean v7, v7, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    if-nez v7, :cond_f

    if-nez v20, :cond_f

    if-eqz v8, :cond_10

    :cond_f
    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_3
    move-exception v0

    goto/16 :goto_1b

    :cond_10
    :try_start_8
    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v7, :cond_11

    move-object v7, v2

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_11
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v23

    const-wide/16 v21, 0x80

    const/16 v24, -0x1

    move-object/from16 v25, v2

    move-object/from16 v20, v7

    invoke-static/range {v20 .. v25}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object/from16 v7, v25

    if-nez v2, :cond_12

    goto :goto_7

    :cond_12
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_8
    if-eqz v3, :cond_14

    if-nez v2, :cond_13

    goto :goto_9

    :cond_13
    const-string/jumbo v8, "com.samsung.android.multiuser.install_only_owner"

    invoke-static {v2, v8}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_a

    :cond_14
    :goto_9
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_17

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    if-eq v2, v1, :cond_15

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_15
    const-string v0, "INSTALL_NOT_ALLOWED_INSTALL_ONLY_OWNER"

    goto :goto_b

    :cond_16
    const-string v0, "INSTALL_ALLOWD"

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install failed. Not allowed to install due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of Package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for User "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_17
    :try_start_9
    iget-object v2, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v2, :cond_18

    goto :goto_c

    :cond_18
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v23
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-wide/16 v21, 0x80

    const/16 v24, -0x1

    move-object/from16 v20, v2

    move-object/from16 v25, v7

    :try_start_a
    invoke-static/range {v20 .. v25}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v2, :cond_19

    :catch_2
    :goto_c
    const/4 v2, 0x0

    goto :goto_d

    :cond_19
    :try_start_b
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_d

    :catch_3
    move-object/from16 v7, v25

    goto :goto_c

    :goto_d
    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_e

    :cond_1a
    :try_start_c
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v3, v8, v2}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    :goto_e
    if-eqz v2, :cond_1b

    const-string/jumbo v0, "This app installation is not allowed"

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_1b
    :try_start_d
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v10, v9, v2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v8, v2

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_f
    if-ge v10, v8, :cond_1d

    aget v14, v2, v10

    invoke-virtual {v7, v14}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v14

    xor-int/lit8 v16, v14, 0x1

    if-nez v14, :cond_1c

    move/from16 v14, v16

    goto :goto_10

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v16

    goto :goto_f

    :cond_1d
    :goto_10
    if-nez v14, :cond_1e

    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_1e
    :try_start_e
    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    invoke-virtual {v7, v3, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v2

    const/16 v8, 0x8

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v2

    iput v11, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class v8, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v10, 0x0

    invoke-static {v8, v10, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v3}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v3, v10, v11}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v2, v7, v3}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v7}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :goto_11
    const/4 v2, 0x1

    goto :goto_12

    :cond_1f
    const/4 v10, 0x0

    if-eqz v6, :cond_20

    invoke-virtual {v7, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_11

    :cond_20
    move v2, v10

    :goto_12
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-static {v8, v7, v3, v0, v6}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v2, :cond_27

    iget-object v0, v7, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v6, Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v2, :cond_21

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_13

    :cond_21
    move v2, v10

    :goto_13
    invoke-interface {v5, v9, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_22

    if-nez v2, :cond_23

    :cond_22
    const/4 v0, 0x0

    goto :goto_14

    :cond_23
    const/4 v0, 0x0

    goto :goto_15

    :goto_14
    invoke-virtual {v7, v0}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    :goto_15
    iget-object v2, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v2, :cond_25

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/high16 v5, 0x400000

    and-int v5, p3, v5

    if-eqz v5, :cond_24

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v5

    :cond_24
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v6, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    new-instance v8, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v11, v8, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    iput-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 v2, 0x3

    iput v2, v8, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAutoRevokePermissionsMode:I

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-virtual {v5, v6, v8, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    filled-new-array {v3}, [I

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_17

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_16

    :catchall_5
    move-exception v0

    :try_start_13
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v1

    :cond_25
    :goto_17
    iget-object v2, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v2, :cond_26

    const/4 v6, 0x1

    goto :goto_18

    :cond_26
    move v6, v10

    :goto_18
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    move/from16 v26, v6

    move v6, v3

    move-object v3, v5

    move-object v5, v7

    move/from16 v7, v26

    move-object/from16 v26, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZLjava/lang/String;)V

    move-object v10, v4

    move-object v0, v5

    move v3, v6

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    filled-new-array {v3}, [I

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    new-instance v2, Lcom/android/server/pm/InstallRequest;

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    filled-new-array {v3}, [I

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v1, v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object v10, v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput v3, v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$2:I

    iput-object v12, v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$3:Landroid/content/IntentSender;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iget v7, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    move v8, v9

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v9

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/InstallRequest;-><init>(ILcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;IIZ)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-object/from16 v12, v26

    goto :goto_19

    :catchall_6
    move-exception v0

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :cond_27
    move-object v10, v4

    move-object v0, v7

    move v8, v9

    :goto_19
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v2, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_29

    if-eqz v3, :cond_28

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v2

    if-ne v3, v2, :cond_29

    :cond_28
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)V

    :cond_29
    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v10, v4, v5, v0}, Lcom/android/server/pm/PmHook;->installSuccessLog(ILjava/lang/String;JLjava/lang/String;)V

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2a
    :goto_1a
    :try_start_18
    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_1b
    :try_start_19
    monitor-exit v15
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :goto_1c
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "updateAllSharedLibrariesLPw failed: "

    new-instance v0, Ljava/io/File;

    move-object/from16 v5, p1

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v6, v5, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int/lit8 v6, v6, 0x11

    invoke-virtual {v5, v0}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result v5

    invoke-virtual {v1, v0, v6, v5}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6

    :try_start_3
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    move v9, v4

    goto :goto_1

    :cond_0
    move v9, v7

    :goto_1
    if-eqz v9, :cond_4

    array-length v10, v2

    move v11, v7

    move v12, v11

    :goto_2
    if-ge v11, v10, :cond_3

    aget v13, v2, v11

    invoke-static {v3, v13}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v14

    invoke-virtual {v5, v13}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v15

    if-eq v14, v15, :cond_1

    move v12, v4

    :cond_1
    invoke-virtual {v5, v13, v14}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    if-eqz v14, :cond_2

    invoke-virtual {v5, v7, v13}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v7}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    if-eqz v12, :cond_4

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v5}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :cond_4
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    sget-object v4, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    const/4 v5, -0x1

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    array-length v3, v2

    move v4, v7

    :goto_4
    if-ge v4, v3, :cond_6

    aget v5, v2, v4

    if-eqz v9, :cond_5

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v10, v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    if-eqz p4, :cond_7

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v0, v7}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Ljava/util/List;Z)V

    :cond_7
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void

    :goto_5
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_6
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final installPackagesFromDir(Ljava/io/File;ILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 9

    new-instance v0, Lcom/android/server/pm/ParallelPackageParser;

    invoke-direct {v0, p3, p4}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    const/high16 p3, 0x800000

    and-int/2addr p3, p2

    const/4 p4, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    new-instance p3, Lcom/android/server/pm/InitAppsHelper$ScanParams;

    const/16 v2, 0x200

    invoke-direct {p3, p1, v2, p2, v1}, Lcom/android/server/pm/InitAppsHelper$ScanParams;-><init>(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/server/pm/InitAppsHelper$ScanParams;

    invoke-direct {p3, p1, p4, p2, v1}, Lcom/android/server/pm/InitAppsHelper$ScanParams;-><init>(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p3, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "PackageManager"

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "No files in app dir "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    array-length v1, p2

    move v3, p4

    :goto_1
    if-ge p4, v1, :cond_6

    aget-object v4, p2, p4

    invoke-static {v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const/high16 v5, 0x1000000

    iget v6, p3, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v7, p1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    iget-object v8, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v5, v7, v8}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService$3;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Dropping cache of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v4}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    :cond_3
    const/high16 v5, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v6, v5, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v7, v5, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v5, v5, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/pm/install/SkippingApks;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/pm/install/SkippingApks;->isSkippingApk(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v4, p3}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V

    add-int/lit8 v3, v3, 0x1

    :cond_5
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_6
    move p4, v3

    :goto_3
    if-lez p4, :cond_7

    invoke-virtual {v0}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->processParseResult(Lcom/android/server/pm/ParallelPackageParser$ParseResult;)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 16

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Uncompressing system stub; pkg: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    array-length v4, v4

    if-lez v4, :cond_8

    invoke-static {v5}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v0, ", file: "

    const-string v6, "Failed to decompress; pkg: "

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    const/16 v7, 0x1ed

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    :try_start_0
    invoke-static {v4, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    array-length v7, v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    move v12, v8

    move v11, v9

    :goto_0
    if-ge v11, v7, :cond_2

    :try_start_1
    aget-object v13, v3, v11

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x3

    invoke-virtual {v14, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v13, v15}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFile(Ljava/io/File;Ljava/io/File;)I

    move-result v12

    if-eq v12, v8, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Success to decompress; pkg: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v14, v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    move v12, v8

    :goto_1
    const-string v3, ", err: "

    invoke-static {v6, v2, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_2
    :goto_2
    if-ne v12, v8, :cond_3

    const-string v3, "Failed to extract native libraries; pkg: "

    new-instance v0, Ljava/io/File;

    const-string/jumbo v6, "lib"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_2
    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v6, v0, v5, v9}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_3
    move v12, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v6, v5

    :goto_4
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; err: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/16 v0, -0x6e

    goto :goto_3

    :goto_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_3
    :goto_6
    if-ne v12, v8, :cond_6

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    :cond_4
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    :goto_7
    move-object v5, v4

    goto :goto_8

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    goto :goto_8

    :cond_8
    if-eqz v0, :cond_9

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v2, "No files to decompress at: "

    invoke-static {v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    if-eqz v5, :cond_a

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    move/from16 v2, p2

    move/from16 v4, p3

    :try_start_6
    invoke-virtual {v1, v5, v2, v4}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_4

    return-object v0

    :catch_4
    move-exception v0

    const-string/jumbo v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to install compressed system package:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_a
    move-object/from16 v3, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to decompress stub at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0xb

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0
.end method

.method public final optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v0, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-boolean v0, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final parallelInstallPackagesFromDirs(Ljava/util/List;Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/pm/InitAppsHelper$ScanParams;

    iget-object v8, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v7, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    iget v11, v7, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v13, "PackageManager"

    if-eqz v12, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "No files in app dir "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 p2, v3

    move/from16 p3, v4

    goto/16 :goto_5

    :cond_1
    array-length v12, v10

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_0

    aget-object v15, v10, v14

    invoke-static {v15}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 p2, v3

    move/from16 p3, v4

    goto/16 :goto_4

    :cond_3
    :goto_2
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    const/high16 v16, 0x1000000

    and-int v16, v11, v16

    if-eqz v16, :cond_4

    new-instance v5, Lcom/android/server/pm/parsing/PackageCacher;

    move-object/from16 p2, v3

    iget-object v3, v8, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    move/from16 p3, v4

    iget-object v4, v8, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v5, v3, v4}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService$3;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dropping cache of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v15}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    goto :goto_3

    :cond_4
    move-object/from16 p2, v3

    move/from16 p3, v4

    :goto_3
    const/high16 v3, 0x10000

    and-int/2addr v3, v11

    if-eqz v3, :cond_5

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v8, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v4, v3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iget-object v5, v3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/pm/install/SkippingApks;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/pm/install/SkippingApks;->isSkippingApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;

    iget-object v4, v1, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    iput-object v15, v5, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iput-object v7, v5, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/pm/InitAppsHelper$ScanParams;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v15, v3, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;->scanFile:Ljava/io/File;

    iput-object v4, v3, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;->future:Ljava/util/concurrent/Future;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    move/from16 v4, p3

    goto/16 :goto_1

    :goto_5
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p2

    move/from16 v4, p3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :cond_7
    if-ge v5, v1, :cond_8

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;

    :try_start_0
    iget-object v6, v4, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/InstallPackageHelper;->processParseResult(Lcom/android/server/pm/ParallelPackageParser$ParseResult;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to parse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/android/server/pm/ParallelPackageParser$OrderedResult;->scanFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method public final performSpegIfNeeded(Ljava/util/List;)V
    .locals 32

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    if-nez v2, :cond_0

    goto/16 :goto_20

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ReconciledPackage;

    iget-object v6, v0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    sget-object v7, Lcom/android/server/pm/DexOptHelper;->sDexoptExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/server/pm/DexOptHelper;->shouldCallArtService(Lcom/android/server/pm/InstallRequest;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v9

    :goto_2
    const-string v8, "Feature is disabled for "

    const-string/jumbo v10, "SPEG"

    iget-object v11, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-nez v11, :cond_3

    const-string v0, "Feature is disabled due to service is not inited"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v15, v3

    move-object/from16 v17, v4

    goto/16 :goto_1e

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/pm/SpegService;->updateModeIfNeeded()V

    iget-object v11, v0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-boolean v12, v11, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-eqz v12, :cond_4

    const-string v0, "Feature is disabled for existing app"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-nez v7, :cond_5

    const-string v0, "Feature is disabled due to dexopt skipped"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string/jumbo v7, "sys.dexopt.ctrl"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v0, "Feature is disabled by high temperature"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_7

    const-string/jumbo v13, "com.samsung.android.speg.disabled"

    invoke-virtual {v12, v13, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v0, "Feature is disabled in app manifest"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_8

    const-string v0, "Feature is disabled for reinstalled apps"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v14, v2, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_9
    move-object v15, v3

    move-object/from16 v17, v4

    goto/16 :goto_1f

    :cond_a
    invoke-virtual {v2, v12}, Lcom/android/server/ProfileService;->isPackageBlockListed(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v0, "Feature is disabled for package "

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    const-class v13, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v15

    move-object/from16 p1, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x1

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v14, v9

    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    if-ge v14, v9, :cond_10

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    if-nez v9, :cond_c

    move-object/from16 v17, v4

    goto :goto_6

    :cond_c
    move-object/from16 v17, v4

    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_6

    :cond_e
    iget-object v4, v4, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_f

    const-string v0, "Feature is disabled for privileged apps"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v15, v3

    goto/16 :goto_1e

    :cond_f
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v17

    goto :goto_4

    :cond_10
    move-object/from16 v17, v4

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_12

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "com.samsung.android.knox.permission"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v0, "Feature is disabled for apps with specific uses-permission"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_12
    iget-object v4, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v5

    const-string/jumbo v9, "android.permission.SET_WALLPAPER"

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v9, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_13

    const-string v0, "Feature is disabled due to SET_WALLPAPER permission"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    const/4 v9, 0x5

    if-nez v5, :cond_14

    invoke-virtual {v2, v9, v4}, Lcom/android/server/ProfileService;->apkHasNumOfDexFiles(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v0, " as it has more than 4 dex files"

    invoke-static {v8, v12, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    const-string/jumbo v5, "com.sec.android.easyMover"

    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v0, "Feature is disabled for smart switch installer"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_15
    iget-boolean v5, v2, Lcom/android/server/pm/SpegService;->mBlockSpegInstallation:Z

    if-eqz v5, :cond_16

    const-string v0, "Feature is disabled until SmartSwitch is finished"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_16
    iget-boolean v5, v2, Lcom/android/server/pm/SpegService;->mSetupWizardFinished:Z

    if-nez v5, :cond_17

    const-string v0, "Feature is disabled until setup wizard is finished"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_17
    iget-object v5, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    const-string/jumbo v11, "com.sec.android.app.kidshome"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v0, " due to KidsHome"

    invoke-static {v8, v12, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_18
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    const-string v0, "Feature is disabled for shared package"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_19
    invoke-static {v10, v4}, Lcom/android/server/ProfileService;->checkSafeToCreateProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_5

    :cond_1a
    iget-boolean v4, v2, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    const/16 v5, 0xa

    if-nez v4, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-boolean v4, v2, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    if-eqz v4, :cond_1c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v2, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    sub-long v11, v7, v11

    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v11

    long-to-int v4, v11

    const/16 v11, 0x28

    if-ge v4, v11, :cond_1b

    const-string v0, "Disable SPEG due to continuous installation, blockedDuration: "

    const-string v5, " minutes"

    invoke-static {v4, v0, v5, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Feature is disabled because of continual launches limit"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1b
    const/4 v13, 0x0

    iput-boolean v13, v2, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    iput v13, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    const-wide/16 v11, -0x1

    iput-wide v11, v2, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    :cond_1c
    iget v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v9, :cond_1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v2, Lcom/android/server/pm/SpegService;->mSpegFirstLaunchTime:J

    sub-long v11, v7, v11

    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v11

    long-to-int v4, v11

    if-ge v4, v5, :cond_1d

    move/from16 v9, v16

    iput-boolean v9, v2, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    iput-wide v7, v2, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    const/4 v13, 0x0

    goto :goto_7

    :cond_1d
    move/from16 v9, v16

    const/4 v13, 0x0

    iput v13, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    goto :goto_7

    :cond_1e
    move/from16 v9, v16

    const/4 v13, 0x0

    if-le v4, v9, :cond_1f

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v2, Lcom/android/server/pm/SpegService;->mSpegPrevLaunchTime:J

    sub-long v11, v7, v11

    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v11

    long-to-int v4, v11

    const/4 v9, 0x3

    if-le v4, v9, :cond_1f

    iput v13, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    :cond_1f
    :goto_7
    iget v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    if-nez v4, :cond_20

    iput-wide v7, v2, Lcom/android/server/pm/SpegService;->mSpegFirstLaunchTime:J

    const-string v4, "Continual launches limit is reset"

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iput-wide v7, v2, Lcom/android/server/pm/SpegService;->mSpegPrevLaunchTime:J

    iget v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    :cond_21
    const-string v4, "Failed to disable network connection for uid "

    const-string v7, "Failed to start "

    const-string/jumbo v8, "Package manager doesn\'t know the package: "

    const-string/jumbo v9, "SPEG"

    const-string/jumbo v10, "Started, SPEG v2.4.3"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v18

    if-nez v18, :cond_22

    iget-object v0, v2, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string v4, "Activity manager doesn\'t exist"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object v15, v3

    move-object v12, v6

    const/4 v9, 0x0

    goto/16 :goto_1d

    :cond_22
    const-string/jumbo v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    if-nez v9, :cond_23

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v4, "Network manager is not found"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_23
    iget-object v10, v0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_24

    const-string/jumbo v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "android.intent.action.MAIN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_25

    :cond_24
    move-object v15, v3

    move-object v12, v6

    const/4 v4, 0x0

    goto/16 :goto_1c

    :cond_25
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v22

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v13, 0x10000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v13, 0x40000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v13, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v13

    :try_start_0
    iget-object v14, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v14, v14, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v14, v14, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v14, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    if-nez v14, :cond_26

    const-string/jumbo v0, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v13

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    :cond_26
    iget v8, v14, Lcom/android/server/pm/PackageSetting;->mAppId:I

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v8}, Lcom/android/server/pm/SpegService;->checkAppId(I)Z

    move-result v13

    if-nez v13, :cond_27

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v4, "Skip feature because of non-regular application id: "

    invoke-static {v8, v4, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_27
    iput-object v11, v2, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v8

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v13

    invoke-virtual {v13, v11, v8}, Landroid/hardware/display/DisplayManagerGlobal;->createSpegVirtualDisplay(Ljava/lang/String;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v13

    if-nez v13, :cond_28

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v4, "VirtualDisplay is not created"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_28
    invoke-virtual {v13}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v0

    move-object/from16 v21, v12

    const/4 v12, 0x0

    invoke-static {v12, v11}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v29 .. v29}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/base.speg"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v29 .. v29}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    :try_start_1
    iget-object v12, v10, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v12, :cond_29

    invoke-virtual {v12}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_29
    move-object/from16 v12, p1

    iput-object v12, v10, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {v2, v8, v14, v11}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v2, v8, v5, v12}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v16, :cond_32

    :try_start_2
    invoke-interface {v9, v8, v12}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string/jumbo v20, "com.samsung.speg"

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v28

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-interface/range {v18 .. v28}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v12

    if-eqz v12, :cond_31

    const-string/jumbo v4, "com.samsung.speg.collect_time_ms"

    const/16 v7, 0x7d0

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v12, v6

    :catch_0
    :goto_9
    int-to-long v6, v4

    add-long v6, v30, v6

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sub-long v6, v6, v18

    const-wide/16 v18, 0x0

    cmp-long v15, v6, v18

    if-lez v15, :cond_2a

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v6, -0x1

    goto/16 :goto_17

    :catch_1
    move-exception v0

    move-object v15, v3

    :goto_a
    const/4 v6, -0x1

    goto/16 :goto_11

    :cond_2a
    :try_start_6
    invoke-interface/range {v29 .. v29}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Lcom/android/server/pm/SpegService;->getPidOf(ILjava/lang/String;)I

    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_30

    :try_start_7
    iget-boolean v7, v2, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    if-eqz v7, :cond_2d

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v7, "Wait for app to write cache"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit16 v4, v4, 0x3e8

    move-object v15, v3

    int-to-long v3, v4

    :catch_2
    :goto_b
    :try_start_8
    invoke-interface/range {v29 .. v29}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lcom/android/server/pm/SpegService;->getPidOf(ILjava/lang/String;)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    add-long v20, v30, v3

    cmp-long v0, v18, v20

    if-gtz v0, :cond_2b

    const-wide/16 v18, 0xa

    :try_start_9
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_17

    :catch_3
    move-exception v0

    goto/16 :goto_11

    :cond_2b
    :try_start_a
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string v3, "Failed to wait for cache dump"

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v8}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v3

    invoke-interface/range {v29 .. v29}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v11, v0, v3, v4}, Lcom/android/server/pm/SpegService;->installSpegCacheToDalvikCache(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    :goto_c
    move v3, v0

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v15, v3

    goto/16 :goto_11

    :cond_2d
    move-object v15, v3

    const-string/jumbo v3, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Send signal to dump profiles in app, pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xa

    invoke-static {v6, v3}, Landroid/os/Process;->sendSignal(II)V

    invoke-interface/range {v29 .. v29}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3, v0}, Lcom/android/server/pm/SpegService;->storePrimaryProf(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_c

    :goto_d
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v21, "SPEG"

    const/16 v22, 0xd

    const/16 v24, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v0

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-static {v6}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    invoke-virtual {v13}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t release "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v13, 0x0

    invoke-virtual {v2, v8, v5, v13}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v4, "SPEG can\'t delete "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-virtual {v2, v8, v11}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    :try_start_b
    invoke-interface {v9, v8, v13}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    const-string/jumbo v4, "SPEG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to restore network connection for uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    :try_start_c
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v4, v11, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_6

    :goto_f
    const/4 v4, 0x0

    const/4 v7, -0x1

    goto :goto_10

    :catch_6
    move-exception v0

    const-string/jumbo v4, "SPEG"

    const-string v5, "Failed to set stopped state"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :goto_10
    invoke-virtual {v2, v7, v7, v4}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    move v9, v3

    goto/16 :goto_15

    :cond_30
    move-object v15, v3

    :try_start_d
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v3, "getPidOf failed"

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_7
    move-exception v0

    move-object v15, v3

    move-object v12, v6

    goto/16 :goto_a

    :cond_31
    move-object v15, v3

    move-object v12, v6

    :try_start_e
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", res="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    goto/16 :goto_a

    :catch_9
    move-exception v0

    move-object v15, v3

    move-object v12, v6

    new-instance v3, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_32
    move-object v15, v3

    move-object v12, v6

    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v3, "createSpegMarkerFile failed"

    invoke-direct {v0, v3}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_11
    :try_start_f
    const-string/jumbo v3, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cancel SPEG for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v21, "SPEG"

    const/16 v22, 0xd

    const/16 v24, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v0

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-static {v6}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    invoke-virtual {v13}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string/jumbo v0, "SPEG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t release "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 v13, 0x0

    invoke-virtual {v2, v8, v5, v13}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v3, "SPEG can\'t delete "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    invoke-virtual {v2, v8, v11}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    :try_start_10
    invoke-interface {v9, v8, v13}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string/jumbo v3, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to restore network connection for uid "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    :try_start_11
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v3, v11, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_b

    :goto_13
    const/4 v4, 0x0

    const/4 v7, -0x1

    goto :goto_14

    :catch_b
    move-exception v0

    const-string/jumbo v3, "SPEG"

    const-string v4, "Failed to set stopped state"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :goto_14
    invoke-virtual {v2, v7, v7, v4}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    const/4 v9, 0x0

    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_35

    const-string/jumbo v3, "Success"

    goto :goto_16

    :cond_35
    const-string v3, "Failure"

    :goto_16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " took "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v30

    const-string v5, " ms"

    invoke-static {v0, v3, v4, v5}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "dd-MM-yyyy HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/SpegService;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "last_id"

    const/4 v7, -0x1

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "key_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v7, v4, 0x32

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/pm/SpegService;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v0, "SPEG"

    const-string v3, "Finished"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :goto_17
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v21, "SPEG"

    const/16 v22, 0xd

    const/16 v24, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v0

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-static {v6}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    invoke-virtual {v13}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "SPEG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t release "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v13, 0x0

    invoke-virtual {v2, v8, v5, v13}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v3, "SPEG can\'t delete "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-virtual {v2, v8, v11}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    :try_start_12
    invoke-interface {v9, v8, v13}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_18

    :catch_c
    move-exception v0

    const-string/jumbo v3, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to restore network connection for uid "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    :try_start_13
    iget-object v0, v2, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v3, v11, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_d

    :goto_19
    const/4 v4, 0x0

    const/4 v7, -0x1

    goto :goto_1a

    :catch_d
    move-exception v0

    const-string/jumbo v3, "SPEG"

    const-string v4, "Failed to set stopped state"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :goto_1a
    invoke-virtual {v2, v7, v7, v4}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    throw v1

    :goto_1b
    :try_start_14
    monitor-exit v13
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_1c
    const-string/jumbo v0, "SPEG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Package "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t have launchable intent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v4

    :goto_1d
    if-eqz v9, :cond_38

    iget-boolean v0, v2, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    if-nez v0, :cond_38

    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/pm/InstallRequest;->mSpegProfileGenerated:Z

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/DexOptHelper;->performDexoptIfNeededAsync(Lcom/android/server/pm/InstallRequest;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_38

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_38
    :goto_1e
    move-object v3, v15

    move-object/from16 v4, v17

    goto/16 :goto_0

    :goto_1f
    const-string v0, "Feature is disabled for system apps"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_39
    move-object v15, v3

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    :try_start_15
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda9;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {v15, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/util/concurrent/CompletionException; {:try_start_15 .. :try_end_15} :catch_e

    goto :goto_20

    :catch_e
    move-exception v0

    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v2, "SPEG: Exception during dexopt"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_20
    return-void
.end method

.method public final prepPerformDexoptIfNeeded(Ljava/util/List;Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;)V
    .locals 28

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_15

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    check-cast v7, Lcom/android/server/pm/ReconciledPackage;

    iget-object v9, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v0, v9, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v16

    iget-object v10, v7, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v10, v16

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v11, v9, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v15, v7, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v13

    move-object v14, v13

    const/4 v13, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    move-object/from16 v10, v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_2
    iget-boolean v11, v9, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-eqz v11, :cond_12

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_12

    iget-object v7, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v14, Lcom/android/server/SpqrService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/SpqrService;

    if-nez v13, :cond_3

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget v15, v7, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit16 v15, v15, 0x2000

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    :goto_4
    const/16 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    goto :goto_4

    :goto_5
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_6

    :cond_5
    const/4 v11, 0x0

    :goto_6
    iget-object v6, v13, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    if-nez v14, :cond_6

    const-string/jumbo v0, "New package is missing"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_6
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v15, :cond_7

    const-string/jumbo v0, "Package is instant "

    invoke-static {v0, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_7
    const-string/jumbo v15, "sys.dexopt.ctrl"

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-static {v15, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v0, "Dexopt is limited"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v13, v5}, Lcom/android/server/ProfileService;->isPackageBlockListed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v0, "Blocklisted "

    :goto_7
    invoke-static {v0, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_9
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v0, "Package is debuggable "

    goto :goto_7

    :cond_a
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0xb

    invoke-virtual {v13, v15, v3}, Lcom/android/server/ProfileService;->apkHasNumOfDexFiles(ILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string/jumbo v0, "Package has too many dexes "

    goto :goto_7

    :cond_b
    invoke-static {v6, v3}, Lcom/android/server/ProfileService;->checkSafeToCreateProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v0, "Unsafe to create profile"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v15, 0x1388

    if-lt v3, v15, :cond_d

    const/16 v15, 0x176f

    if-gt v3, v15, :cond_d

    const-string/jumbo v0, "Reserved app id "

    goto :goto_7

    :cond_d
    if-eqz v11, :cond_e

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v0, "Incremental installation"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v3, v19, v21

    if-nez v3, :cond_f

    const-string/jumbo v0, "Profile is missing"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_f
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v24 .. v24}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v26

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v27

    const-string v0, "Failed to prepare new profile for "

    invoke-virtual {v13, v3, v6}, Lcom/android/server/ProfileService;->checkUserAndService(II)Z

    move-result v5

    if-nez v5, :cond_10

    :goto_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    :try_start_1
    iget-object v5, v13, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    move/from16 v22, v3

    move-object/from16 v19, v5

    move/from16 v23, v6

    invoke-interface/range {v19 .. v27}, Landroid/os/ISpqrService;->createInvariantProfile(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v5, v24

    if-eqz v3, :cond_11

    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    iget-object v3, v13, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    iget-object v3, v13, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to create invariant profile: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_8

    :goto_9
    iput-boolean v0, v7, Lcom/android/server/pm/InstallRequest;->mSpqrProfileGenerated:Z

    goto :goto_b

    :cond_12
    :goto_a
    move-object/from16 v18, v3

    :goto_b
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v3, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1, v9, v10}, Lcom/android/server/pm/InstallPackageHelper;->getNewUsers(Lcom/android/server/pm/InstallRequest;[I)[I

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v5, v12, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V

    iget-boolean v0, v9, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    iget-object v5, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    const/4 v6, -0x1

    const/16 v7, 0x27

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_d

    :cond_13
    :goto_c
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v3, 0x1

    iput-boolean v3, v9, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DexOptHelper;->performDexoptIfNeededAsync(Lcom/android/server/pm/InstallRequest;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_14

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_14
    move v0, v8

    move-object/from16 v3, v18

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_f

    :goto_d
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v4
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_f
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_10

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_15
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda9;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(I)V

    iput-object v1, v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    move-object/from16 v1, p2

    iput-object v1, v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_11

    :cond_16
    move-object/from16 v1, p2

    invoke-virtual {v1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->run()V

    :goto_11
    return-void
.end method

.method public final prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanRequest;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    const-string/jumbo v3, "Package "

    invoke-static {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v4

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {v1, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v1, v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_2
    :goto_1
    invoke-virtual {v0, v1, v6}, Lcom/android/server/pm/InstallPackageHelper;->getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was transferred to another, but its .apk remains"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_3
    :goto_2
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    move v12, v11

    goto :goto_4

    :cond_5
    :goto_3
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v12

    :goto_4
    const/4 v13, 0x1

    if-nez v12, :cond_6

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14, v13}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v12

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    if-eqz v10, :cond_7

    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14, v10}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v14

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    :goto_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v13

    goto :goto_7

    :cond_8
    move v5, v11

    :goto_7
    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "PackageManager"

    const/high16 v15, 0x4000000

    and-int v15, p3, v15

    if-eqz v15, :cond_a

    move v15, v13

    goto :goto_9

    :cond_a
    move v15, v11

    :goto_9
    and-int/lit8 v16, p3, 0x4

    if-eqz v16, :cond_b

    move/from16 v16, v13

    goto :goto_a

    :cond_b
    move/from16 v16, v11

    :goto_a
    sget-object v9, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_11

    if-nez v4, :cond_11

    if-nez v15, :cond_11

    if-nez v5, :cond_11

    if-nez v16, :cond_c

    goto :goto_b

    :cond_c
    if-nez v0, :cond_d

    const-string/jumbo v0, "Provided context is null!"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "Content resolver not available!"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_e
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDebuggable()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_b

    :cond_f
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_b

    :cond_10
    const-string/jumbo v2, "development_settings_enabled"

    invoke-static {v0, v2, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    move v11, v13

    :cond_11
    :goto_b
    new-instance v0, Lcom/android/server/pm/ScanRequest;

    if-nez v10, :cond_12

    move-object v7, v6

    move-object v6, v3

    const/4 v3, 0x0

    move/from16 v9, p2

    move-object/from16 v13, p5

    move-object v4, v10

    move-object v2, v14

    move/from16 v10, p3

    move v14, v11

    :goto_c
    move v11, v5

    move-object v5, v12

    move-object/from16 v12, p4

    goto :goto_d

    :cond_12
    iget-object v9, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-object v7, v6

    move-object v6, v3

    move-object v3, v9

    move-object/from16 v13, p5

    move-object v4, v10

    move-object v2, v14

    move/from16 v10, p3

    move v14, v11

    move/from16 v9, p2

    goto :goto_c

    :goto_d
    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;Z)V

    return-object v0

    :goto_e
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final prepareInstallPackages(Ljava/util/List;)Z
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    const-wide/32 v2, 0x40000

    :try_start_0
    const-string/jumbo v4, "preparePackage"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallPackageHelper;->preparePackage(Lcom/android/server/pm/InstallRequest;)V
    :try_end_0
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    iget p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :goto_1
    iget-object p1, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_4
    return v1
.end method

.method public final preparePackage(Lcom/android/server/pm/InstallRequest;)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v6

    and-int/lit8 v0, v6, 0x8

    const/4 v8, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v9, v8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    :goto_1
    and-int/lit16 v0, v6, 0x800

    if-eqz v0, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    move v10, v8

    :goto_2
    and-int/lit16 v0, v6, 0x4000

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v8

    :goto_3
    const/high16 v11, 0x10000

    and-int v12, v6, v11

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    const/high16 v13, 0x20000

    and-int v14, v6, v13

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    goto :goto_5

    :cond_5
    move v14, v8

    :goto_5
    iget-object v15, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v15, :cond_6

    move v15, v8

    :goto_6
    move/from16 v16, v11

    goto :goto_7

    :cond_6
    iget v15, v15, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    goto :goto_6

    :goto_7
    const/4 v11, 0x5

    if-ne v15, v11, :cond_7

    const/16 v23, 0x1

    goto :goto_8

    :cond_7
    move/from16 v23, v8

    :goto_8
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x206

    goto :goto_9

    :cond_8
    const/4 v11, 0x6

    :goto_9
    and-int/lit16 v15, v6, 0x1000

    if-eqz v15, :cond_9

    or-int/lit16 v11, v11, 0x400

    :cond_9
    if-eqz v10, :cond_a

    or-int/lit16 v11, v11, 0x2000

    :cond_a
    if-eqz v0, :cond_b

    or-int/lit16 v11, v11, 0x4000

    :cond_b
    if-eqz v12, :cond_c

    const v0, 0x8000

    or-int/2addr v11, v0

    :cond_c
    if-eqz v14, :cond_d

    const/high16 v0, 0x4000000

    or-int/2addr v11, v0

    :cond_d
    new-instance v0, Ljava/io/File;

    if-eqz v14, :cond_e

    iget-object v12, v2, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    iget-object v12, v12, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    goto :goto_a

    :cond_e
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v12

    :goto_a
    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_10

    if-nez v9, :cond_f

    goto :goto_b

    :cond_f
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible ephemeral install; external="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v0}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    throw v0

    :cond_10
    :goto_b
    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v12

    const v15, -0x7fffffc0

    or-int/2addr v12, v15

    if-eqz v9, :cond_11

    const/16 v17, 0x8

    goto :goto_c

    :cond_11
    move/from16 v17, v8

    :goto_c
    or-int v12, v12, v17

    const-string/jumbo v13, "parsePackage"

    move-object/from16 v24, v4

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v13
    :try_end_0
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-wide/from16 v17, v3

    :try_start_1
    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v3

    sget-object v19, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/high16 v19, 0x8000000

    and-int v3, v3, v19

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_d

    :cond_12
    move v3, v8

    :goto_d
    if-nez v3, :cond_13

    goto :goto_f

    :cond_13
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v13, v0, v12}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackageFromPackageLite(Landroid/content/pm/parsing/PackageLite;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v3

    move-object/from16 v30, v3

    :goto_e
    move-object v3, v0

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6b

    :cond_14
    :goto_f
    invoke-virtual {v13, v0, v12, v8}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->artManagedInstallFilesValidationApi()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->validatePackageDexMetadata(Lcom/android/server/pm/pkg/AndroidPackage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_15
    const/16 v30, 0x0

    goto :goto_e

    :goto_10
    :try_start_2
    invoke-virtual {v13}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    iget v13, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda11;

    invoke-direct {v4, v1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/InstallPackageHelper;)V

    invoke-static {v0, v13, v4}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->checkIfInstallAllowed(Landroid/os/Bundle;ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda11;)I

    move-result v0

    if-nez v0, :cond_93

    const/high16 v0, 0x1000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_11

    :cond_16
    move v0, v8

    :goto_11
    if-nez v0, :cond_17

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    move-result v17

    if-eqz v17, :cond_17

    const/4 v0, 0x1

    :cond_17
    if-nez v0, :cond_19

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v0

    sget v15, Lcom/android/server/pm/PackageManagerService;->MIN_INSTALLABLE_TARGET_SDK:I

    if-lt v0, v15, :cond_18

    goto :goto_12

    :cond_18
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targets deprecated sdk version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "App package must target at least SDK version "

    const-string v2, ", but found "

    invoke-static {v15, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1d

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_19
    :goto_12
    const/16 v15, -0x74

    if-eqz v10, :cond_1c

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v32, 0x1

    const/16 v7, 0x1a

    if-lt v0, v7, :cond_1b

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_13

    :cond_1a
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instant app package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not declare sharedUserId."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package may not declare a sharedUserId"

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1b
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instant app package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not target at least O"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package must target at least O"

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1c
    const/16 v32, 0x1

    :goto_13
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v7, -0x13

    if-eqz v0, :cond_1e

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    if-nez v9, :cond_1d

    goto :goto_14

    :cond_1d
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Static shared libs can only be installed on internal storage."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v1, "Static shared libs can only be installed on internal storage."

    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1e
    :goto_14
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/pm/InstallRequest;->setName(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "com.samsung.speg"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_15

    :cond_1f
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v1, -0x6a

    const-string v2, "Forbidden package name"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_20
    :goto_15
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    invoke-static {v15, v7, v0}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_92

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    move-result v0

    if-eqz v0, :cond_22

    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_21

    goto :goto_16

    :cond_21
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v1, -0xf

    const-string v2, "Failed to install test-only apk. Did you forget to add -t?"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_22
    :goto_16
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_23

    sget-object v15, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_17

    :cond_23
    iget-object v15, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_17
    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v15, v4, :cond_25

    if-nez v0, :cond_24

    goto :goto_18

    :cond_24
    iget-object v4, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_18
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_19

    :cond_25
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    invoke-static {v0, v3, v8}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-nez v4, :cond_91

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    invoke-interface {v3, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :goto_19
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "verifying app can be installed or not"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    :try_start_3
    iget-object v15, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v15, v15, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15, v7}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_28

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v8

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v8, :cond_26

    array-length v4, v8

    move-object/from16 v18, v8

    const/4 v8, 0x0

    :goto_1a
    if-ge v8, v4, :cond_26

    aget-object v19, v18, v8

    move/from16 v20, v4

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v20

    goto :goto_1a

    :cond_26
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v0, v7, v15, v13, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_1b

    :cond_27
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "This app installation is not allowed"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0xcf

    invoke-static {v4, v8, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v4, "This app installation is not allowed"

    const/16 v8, -0x6e

    invoke-direct {v0, v8, v4}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_28
    :goto_1b
    if-eqz v10, :cond_2a

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_29

    goto :goto_1c

    :cond_29
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instant app package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not signed with at least APK Signature Scheme v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package must be signed with APK Signature Scheme v2 or greater"

    const/16 v2, -0x74

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2a
    :goto_1c
    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_2b

    move/from16 v41, v32

    goto :goto_1d

    :cond_2b
    const/16 v41, 0x0

    :goto_1d
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    move-object/from16 v40, v0

    goto :goto_1e

    :catch_1
    move-exception v0

    goto :goto_1f

    :cond_2c
    const/16 v40, 0x0

    :goto_1e
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v33

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v35

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v36

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v38

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v39
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v34, v7

    :try_start_5
    invoke-interface/range {v33 .. v41}, Landroid/content/pm/IASKSManager;->verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v7, v34

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2d

    goto :goto_20

    :cond_2d
    :try_start_6
    iput v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    new-instance v4, Lcom/android/server/pm/PrepareFailure;

    invoke-static {v0}, Landroid/content/pm/ASKSManager;->getASKSerrorDetail(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v0, v8}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_2
    move-exception v0

    move-object/from16 v7, v34

    :goto_1f
    const-string/jumbo v4, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "RemoteException: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_20
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->hasUpdateAllowList(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string/jumbo v8, "android"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v13

    if-eqz v13, :cond_2f

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    goto :goto_21

    :catchall_1
    move-exception v0

    goto :goto_22

    :cond_2e
    const/4 v8, 0x0

    :cond_2f
    :goto_21
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    invoke-virtual {v4, v0, v3, v8}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->checkPlatformSignedAppAllowList(Lcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_23

    :goto_22
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_30
    :goto_23
    :try_start_9
    const-string/jumbo v0, "com.sec.android.easyMover"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v4, "com.android.vending"

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string/jumbo v4, "com.sec.android.app.samsungapps"

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_24

    :cond_31
    const/4 v4, 0x0

    goto :goto_25

    :catch_3
    move-exception v0

    goto :goto_26

    :cond_32
    :goto_24
    move/from16 v4, v32

    :goto_25
    if-eqz v0, :cond_34

    if-eqz v4, :cond_34

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "content://com.sec.android.easyMover.statusProvider/isOOBERunning"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "This SmartSwitch installation is not allowed due to app is running in OOBE"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v32

    goto :goto_28

    :cond_33
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "This SmartSwitch installation is allowed"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_27

    :goto_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    :goto_27
    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_90

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_a
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    and-int/lit8 v8, v6, 0x2

    const/high16 v33, 0x200000

    if-eqz v8, :cond_43

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v7}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_35

    iget-object v15, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15, v8}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_35

    invoke-interface {v3, v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object v7, v8

    goto :goto_29

    :catchall_2
    move-exception v0

    goto/16 :goto_69

    :cond_35
    :goto_29
    if-eqz v0, :cond_36

    move/from16 v8, v32

    goto :goto_2a

    :cond_36
    const/4 v8, 0x0

    :goto_2a
    if-eqz v8, :cond_42

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v15

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v13

    move/from16 v36, v6

    const/16 v6, 0x16

    if-le v15, v6, :cond_38

    if-le v13, v6, :cond_37

    goto :goto_2b

    :cond_37
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new target SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t support runtime permissions but the old target SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1a

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_38
    :goto_2b
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    if-eqz v6, :cond_39

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v18, Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v18 .. v18}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    move/from16 v6, v32

    goto :goto_2c

    :cond_39
    const/4 v6, 0x0

    :goto_2c
    if-eqz v7, :cond_3a

    move/from16 v18, v6

    const-string/jumbo v6, "com.salab.issuetracker"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v19, Landroid/content/pm/PackageManagerInternal;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    move/from16 v6, v32

    goto :goto_2d

    :cond_3a
    move/from16 v18, v6

    :cond_3b
    const/4 v6, 0x0

    :goto_2d
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isPersistent()Z

    move-result v19

    if-eqz v19, :cond_3d

    if-nez v18, :cond_3d

    and-int v18, v36, v33

    if-nez v18, :cond_3d

    if-eqz v6, :cond_3c

    goto :goto_2e

    :cond_3c
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a persistent app. Persistent apps are not updateable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3d
    :goto_2e
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-eqz v6, :cond_41

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getMinSdkVersion()I

    move-result v6

    move/from16 v18, v8

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMinSdkVersion()I

    move-result v8

    if-ne v15, v13, :cond_3f

    if-eq v6, v8, :cond_3e

    goto :goto_30

    :cond_3e
    :goto_2f
    move/from16 v28, v9

    move/from16 v29, v10

    goto :goto_32

    :cond_3f
    :goto_30
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v19

    move/from16 v28, v9

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v9

    move/from16 v29, v10

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibVersionMajor()I

    move-result v10

    if-eq v9, v10, :cond_40

    goto :goto_32

    :cond_40
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as it updates an sdk library <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> without changing the versionMajor, but the targetSdkVersion or minSdkVersion has changed: Old targetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new targetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Old minSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new minSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " versionMajor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_41
    :goto_31
    move/from16 v18, v8

    goto :goto_2f

    :cond_42
    move/from16 v36, v6

    goto :goto_31

    :goto_32
    move/from16 v8, v18

    goto :goto_33

    :cond_43
    move/from16 v36, v6

    move/from16 v28, v9

    move/from16 v29, v10

    const/4 v8, 0x0

    :goto_33
    if-nez v0, :cond_44

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    move-result v6

    if-eqz v6, :cond_44

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v6

    if-eqz v6, :cond_44

    iget-object v9, v6, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-lez v9, :cond_44

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    goto :goto_34

    :cond_44
    move-object v6, v0

    :goto_34
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v9

    const/4 v10, -0x5

    if-eqz v9, :cond_45

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v9, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersion(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v9

    if-eqz v9, :cond_47

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    goto :goto_35

    :cond_45
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v9, v9, Lcom/android/server/pm/SharedLibrariesImpl;->mStaticLibsByDeclaringPackage:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/utils/WatchedLongSparseArray;

    if-eqz v9, :cond_47

    iget-object v9, v9, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_46

    goto :goto_35

    :cond_46
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v1, "The package name is same as an existing shared libs"

    invoke-direct {v0, v10, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_47
    :goto_35
    if-eqz v6, :cond_4b

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v13, v9, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v9, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    invoke-virtual {v13, v6, v9, v11}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v15

    if-eqz v15, :cond_49

    invoke-virtual {v13, v6, v3}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_37

    :cond_48
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " upgrade keys do not match the previously installed version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_49
    :try_start_b
    iget-object v15, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v15, v3}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v15

    sget-boolean v18, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    iget v15, v15, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v10, 0x2

    if-ge v15, v10, :cond_4a

    move/from16 v21, v32

    goto :goto_36

    :cond_4a
    const/16 v21, 0x0

    :goto_36
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10, v3}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v22

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v20

    const/16 v19, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    invoke-static/range {v17 .. v23}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v6

    if-eqz v6, :cond_4b

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6
    :try_end_b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_37

    :catchall_3
    move-exception v0

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_4
    move-exception v0

    :try_start_e
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_4b
    :goto_37
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setOriginUsers([I)V

    move v9, v6

    goto :goto_38

    :cond_4c
    const/4 v9, 0x0

    :goto_38
    invoke-static {v3}, Lcom/android/server/pm/InstallPackageHelper;->hasZippedOverlays(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v6, 0x0

    :goto_39
    if-ge v6, v0, :cond_51

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v19, v6

    const-class v6, Landroid/permission/PermissionManager;

    invoke-virtual {v13, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager;

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v13}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6

    if-eqz v6, :cond_4e

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v10

    const/16 v13, 0x1f

    if-lt v10, v13, :cond_4d

    move/from16 v10, v32

    goto :goto_3a

    :cond_4d
    const/4 v10, 0x0

    :goto_3a
    if-eqz v10, :cond_4e

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    if-nez v8, :cond_4f

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4e

    goto :goto_3c

    :cond_4e
    :goto_3b
    move-object/from16 v10, v24

    goto :goto_3d

    :cond_4f
    :goto_3c
    invoke-virtual {v1, v6, v3, v11}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v10

    if-eqz v10, :cond_50

    goto :goto_3b

    :cond_50
    const-string v0, "146211400"

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, v24

    filled-new-array {v0, v10, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to redeclare permission group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x7e

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_3d
    add-int/lit8 v6, v19, 0x1

    move-object/from16 v24, v10

    goto/16 :goto_39

    :cond_51
    move-object/from16 v10, v24

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_3e
    if-ltz v6, :cond_5c

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    iget-object v15, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    move/from16 v19, v8

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v8

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v15

    and-int/lit16 v15, v15, 0x1000

    if-eqz v15, :cond_52

    if-nez v9, :cond_52

    const-string/jumbo v15, "PackageManager"

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v9

    const-string/jumbo v9, "Non-System package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " attempting to delcare ephemeral permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; Removing ephemeral."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v8

    and-int/lit16 v8, v8, -0x1001

    invoke-static {v13, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    goto :goto_3f

    :cond_52
    move-object/from16 v20, v8

    move/from16 v21, v9

    :goto_3f
    if-eqz v20, :cond_55

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v3, v11}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v9

    if-nez v9, :cond_54

    const-string/jumbo v9, "android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Package "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " attempting to redeclare system permission "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "; ignoring new declaration"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto/16 :goto_40

    :cond_53
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to redeclare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x70

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/PrepareFailure;->conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_54
    const-string/jumbo v8, "android"

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    move/from16 v9, v32

    if-ne v8, v9, :cond_55

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v8

    if-nez v8, :cond_55

    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Package "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " trying to change a non-runtime permission "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to runtime; keeping old protection level"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v8

    invoke-static {v13, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    :cond_55
    :goto_40
    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_59

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v8

    const/16 v9, 0x1f

    if-lt v8, v9, :cond_56

    const/4 v8, 0x1

    goto :goto_41

    :cond_56
    const/4 v8, 0x0

    :goto_41
    if-eqz v8, :cond_59

    const/4 v8, 0x0

    :goto_42
    if-ge v8, v0, :cond_58

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    const/4 v8, 0x1

    goto :goto_43

    :cond_57
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x1f

    goto :goto_42

    :cond_58
    const/4 v8, 0x0

    :goto_43
    if-nez v8, :cond_59

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v15, Landroid/permission/PermissionManager;

    invoke-virtual {v8, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionManager;

    const/4 v15, 0x0

    invoke-virtual {v8, v9, v15}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v8

    const/16 v9, -0x7f

    if-eqz v8, :cond_5b

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "android"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_59

    invoke-virtual {v1, v8, v3, v11}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v15

    if-eqz v15, :cond_5a

    :cond_59
    const v8, 0x534e4554

    goto/16 :goto_44

    :cond_5a
    const-string v0, "146211400"

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v10, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to declare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " owned by package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with incompatible certificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5b
    const-string v0, "146211400"

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v10, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v8, 0x534e4554

    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to declare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in non-existing group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_44
    add-int/lit8 v6, v6, -0x1

    move/from16 v8, v19

    move/from16 v9, v21

    const/16 v32, 0x1

    goto/16 :goto_3e

    :cond_5c
    move/from16 v19, v8

    move/from16 v21, v9

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v19, :cond_5d

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_5d

    const/4 v9, 0x1

    :try_start_f
    invoke-interface {v0, v7, v9}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "This app replacing is not allowed by MDM policy"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x6e

    iput v8, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    return-void

    :catch_5
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "MDM hidden api called from non system uid"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_5f

    :try_start_10
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v15, 0x0

    invoke-interface {v0, v4, v15}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-static {v3}, Lcom/android/server/pm/InstallPackageHelper;->isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    goto :goto_45

    :cond_5e
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v6, "This admin app installation is not allowed"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const v6, 0x1040da6

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->showRestrictionToast(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v4, "Install fail, This admin app installation is not allowed"

    const/16 v8, -0x6e

    invoke-direct {v0, v8, v4}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_6

    :catch_6
    :cond_5f
    :goto_45
    if-eqz v21, :cond_62

    if-nez v28, :cond_61

    if-nez v29, :cond_60

    goto :goto_46

    :cond_60
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Cannot update a system app with an instant app"

    const/16 v2, -0x74

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_61
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0xcf

    invoke-static {v0, v8, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Cannot install updates to system apps on sdcard"

    const/16 v2, -0x13

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_62
    :goto_46
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v0

    if-eqz v0, :cond_65

    or-int/lit16 v0, v11, 0x101

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_11
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-nez v6, :cond_63

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Missing settings for moved package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x3

    invoke-static {v7, v6}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_47

    :catchall_4
    move-exception v0

    goto :goto_48

    :cond_63
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :goto_47
    monitor-exit v4

    :cond_64
    move-object v6, v3

    goto/16 :goto_4f

    :goto_48
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_65
    const/16 v32, 0x1

    or-int/lit8 v0, v11, 0x1

    if-nez v14, :cond_64

    :try_start_12
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4
    :try_end_12
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_12 .. :try_end_12} :catch_7

    :try_start_13
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v6, :cond_66

    :try_start_14
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_66

    const/4 v4, 0x1

    goto :goto_49

    :cond_66
    const/4 v4, 0x0

    :goto_49
    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v7, :cond_67

    const/4 v7, 0x0

    goto :goto_4a

    :cond_67
    iget-object v7, v7, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_4a
    sget-boolean v8, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const-string v8, "-"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    const/16 v28, 0x0

    goto :goto_4b

    :cond_68
    move-object/from16 v28, v7

    :goto_4b
    if-eqz v6, :cond_69

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v6, 0x1

    goto :goto_4c

    :cond_69
    const/4 v6, 0x0

    :goto_4c
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    if-nez v4, :cond_6b

    if-eqz v6, :cond_6a

    goto :goto_4d

    :cond_6a
    const/16 v27, 0x0

    goto :goto_4e

    :cond_6b
    :goto_4d
    const/16 v27, 0x1

    :goto_4e
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v8, "app-lib"

    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v25, v3

    move-object/from16 v29, v4

    move-object/from16 v24, v7

    move/from16 v26, v21

    invoke-virtual/range {v24 .. v29}, Lcom/android/server/pm/PackageAbiHelperImpl;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v3

    move-object/from16 v6, v25

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    iget-object v7, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v7

    iget-object v4, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-interface {v7, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_14
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_4f

    :catchall_5
    move-exception v0

    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_16
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_16 .. :try_end_16} :catch_7

    :catch_7
    move-exception v0

    const-string/jumbo v1, "PackageManager"

    const-string v2, "Error deriving application ABI"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error deriving application ABI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PrepareFailure;->ofInternalError(Ljava/lang/String;)Lcom/android/server/pm/PrepareFailure;

    move-result-object v0

    throw v0

    :goto_4f
    if-eqz v14, :cond_6c

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    iget-object v3, v3, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-interface {v6, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    iget-object v3, v3, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-interface {v6, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_6c
    if-eqz v19, :cond_8d

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_17
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v8

    if-eqz v8, :cond_6e

    if-eqz v4, :cond_6e

    and-int/lit8 v4, v36, 0x20

    if-eqz v4, :cond_6d

    goto :goto_50

    :cond_6d
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v1, "Packages declaring static-shared libs cannot be updated"

    const/4 v2, -0x5

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6e
    :goto_50
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_6f

    const/4 v4, 0x1

    goto :goto_51

    :cond_6f
    const/4 v4, 0x0

    :goto_51
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v8

    :try_start_18
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_70

    const/16 v31, 0x0

    goto :goto_52

    :cond_70
    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    move-object/from16 v31, v10

    :goto_52
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v11, v11, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v11, v9, v10, v0}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-virtual {v11, v9, v6}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v10

    if-eqz v10, :cond_71

    goto :goto_53

    :cond_71
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New package not signed by keys specified by upgrade-keysets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_6
    move-exception v0

    goto/16 :goto_66

    :cond_72
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v14

    if-nez v14, :cond_74

    const/16 v13, 0x8

    invoke-virtual {v11, v10, v13}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_74

    if-eqz v23, :cond_73

    invoke-virtual {v11, v10}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v10

    if-eqz v10, :cond_73

    goto :goto_53

    :cond_73
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New package has a different signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_74
    :goto_53
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v10

    if-eqz v10, :cond_77

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    if-eqz v10, :cond_77

    :try_start_19
    const-string/jumbo v10, "SHA-512"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_75

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    array-length v13, v11

    const/4 v14, 0x0

    :goto_54
    if-ge v14, v13, :cond_75

    aget-object v15, v11, v14

    move/from16 v17, v4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v4}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v17

    goto :goto_54

    :cond_75
    move/from16 v17, v4

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_19} :catch_8
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v10

    invoke-static {v10, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_55

    :cond_76
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New package fails restrict-update check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_8
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compute hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_77
    move/from16 v17, v4

    :goto_55
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    if-eqz v4, :cond_78

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_56

    :cond_78
    const-string v1, "<nothing>"

    :goto_56
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_79

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_57

    :cond_79
    const-string v4, "<nothing>"

    :goto_57
    const-string v10, "<nothing>"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v10

    if-eqz v10, :cond_7a

    const-string v4, "<nothing>"

    :cond_7a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, -0x18

    if-nez v10, :cond_7c

    const-string v10, "<nothing>"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7b

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    if-nez v10, :cond_7b

    invoke-virtual {v9, v5}, Lcom/android/server/pm/PackageSetting;->isArchivedOnAnyUser([I)Z

    move-result v10

    if-eqz v10, :cond_7b

    goto :goto_58

    :cond_7b
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shared user changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7c
    :goto_58
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isLeavingSharedUser()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v1

    if-eqz v1, :cond_7e

    :cond_7d
    const/4 v13, 0x1

    goto :goto_59

    :cond_7e
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to rejoin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_59
    invoke-virtual {v9, v5, v13}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v9, v5, v15}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v4

    if-eqz v17, :cond_82

    iget v10, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_80

    array-length v10, v5

    move v11, v15

    :goto_5a
    if-ge v11, v10, :cond_82

    aget v13, v5, v11

    invoke-virtual {v9, v13}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v14

    if-eqz v14, :cond_7f

    add-int/lit8 v11, v11, 0x1

    goto :goto_5a

    :cond_7f
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t replace full app with instant app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v0}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    throw v0

    :cond_80
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_81

    goto :goto_5b

    :cond_81
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t replace full app with instant app: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v0}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    throw v0

    :cond_82
    :goto_5b
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance v3, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v3}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_83

    const/4 v5, 0x1

    goto :goto_5c

    :cond_83
    move v5, v15

    :goto_5c
    iput-boolean v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    const/4 v13, 0x1

    iput-boolean v13, v3, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    iput-object v1, v3, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    new-instance v5, Landroid/util/SparseIntArray;

    array-length v8, v1

    invoke-direct {v5, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    move v5, v15

    :goto_5d
    array-length v8, v1

    if-ge v5, v8, :cond_84

    aget v8, v1, v5

    iget-object v10, v3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/PackageSetting;->getInstallReason(I)I

    move-result v11

    invoke-virtual {v10, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    :cond_84
    new-instance v1, Landroid/util/SparseIntArray;

    array-length v5, v4

    invoke-direct {v1, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, v3, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    move v1, v15

    :goto_5e
    array-length v5, v4

    if-ge v1, v5, :cond_85

    aget v5, v4, v1

    iget-object v8, v3, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v5}, Lcom/android/server/pm/PackageSetting;->getUninstallReason(I)I

    move-result v10

    invoke-virtual {v8, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_85
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v1

    iput-boolean v1, v3, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallRequest;->setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v3

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v4

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    move-result v5

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    move-result v11

    or-int v0, v0, v16

    if-eqz v3, :cond_86

    const/high16 v13, 0x20000

    goto :goto_5f

    :cond_86
    move v13, v15

    :goto_5f
    or-int/2addr v0, v13

    if-eqz v4, :cond_87

    const/high16 v3, 0x40000

    goto :goto_60

    :cond_87
    move v3, v15

    :goto_60
    or-int/2addr v0, v3

    if-eqz v5, :cond_88

    const/high16 v3, 0x80000

    goto :goto_61

    :cond_88
    move v3, v15

    :goto_61
    or-int/2addr v0, v3

    if-eqz v8, :cond_89

    const/high16 v3, 0x100000

    goto :goto_62

    :cond_89
    move v3, v15

    :goto_62
    or-int/2addr v0, v3

    if-eqz v10, :cond_8a

    const/high16 v3, 0x400000

    goto :goto_63

    :cond_8a
    move v3, v15

    :goto_63
    or-int/2addr v0, v3

    if-eqz v11, :cond_8b

    move/from16 v8, v33

    goto :goto_64

    :cond_8b
    move v8, v15

    :goto_64
    or-int/2addr v0, v8

    const/4 v13, 0x1

    iput v13, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    :cond_8c
    move-object v5, v7

    move-object v10, v9

    move-object/from16 v11, v31

    move v9, v1

    :goto_65
    move v3, v0

    goto :goto_67

    :goto_66
    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_7
    move-exception v0

    :try_start_1c
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_8d
    const/4 v15, 0x0

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5

    :try_start_1d
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8f

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    move v9, v15

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_65

    :goto_67
    move/from16 v8, v19

    move-object v1, v2

    move v4, v12

    move/from16 v2, v19

    move-object/from16 v7, v30

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/InstallRequest;->setPrepareResult(ZIILcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    return-void

    :catchall_8
    move-exception v0

    goto :goto_68

    :cond_8e
    move-object v1, v2

    :try_start_1e
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0xcf

    invoke-static {v0, v8, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to re-install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without first uninstalling."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8f
    move-object v1, v2

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0xcf

    invoke-static {v0, v8, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to re-install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without first uninstalling package running as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_68
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :try_start_1f
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is an optimized app. APK optimized apps are not updateable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_69
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_90
    move-object v1, v2

    move-object v6, v3

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0xcf

    invoke-static {v0, v8, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v1, "This SmartSwitch installation is not allowed due to app is running in OOBE"

    const/16 v8, -0x6e

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_91
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Failed collect during installPackageLI"

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1

    :cond_92
    const/16 v8, -0x6e

    const-string/jumbo v0, "This app installation is not allowed"

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v1, v8, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_93
    move-object v1, v2

    if-eqz v0, :cond_96

    const/4 v13, 0x1

    if-eq v0, v13, :cond_95

    const/4 v4, 0x2

    if-eq v0, v4, :cond_94

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    :cond_94
    const-string v0, "INSTALL_NOT_ALLOWED_UNINSTALL_FOR_GUEST"

    goto :goto_6a

    :cond_95
    const-string v0, "INSTALL_NOT_ALLOWED_INSTALL_ONLY_OWNER"

    goto :goto_6a

    :cond_96
    const-string v0, "INSTALL_ALLOWD"

    :goto_6a
    const-string v2, "Install failed. Not allowed to install due to "

    const-string v3, " for User "

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v8, -0x6e

    invoke-direct {v1, v8, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_9
    move-exception v0

    goto :goto_6e

    :catch_9
    move-exception v0

    goto :goto_6d

    :goto_6b
    :try_start_20
    invoke-virtual {v13}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    goto :goto_6c

    :catchall_a
    move-exception v0

    :try_start_21
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6c
    throw v1
    :try_end_21
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :catchall_b
    move-exception v0

    move-wide/from16 v17, v3

    goto :goto_6e

    :catch_a
    move-exception v0

    move-wide/from16 v17, v3

    :goto_6d
    :try_start_22
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    iget v2, v0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    const-string v3, "Failed parse during installPackageLI"

    invoke-static {v3, v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :goto_6e
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final processParseResult(Lcom/android/server/pm/ParallelPackageParser$ParseResult;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-string v8, "Failed to scan "

    const-string/jumbo v0, "Package is not in allowed list : "

    iget-object v2, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    iget-object v9, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanParams:Lcom/android/server/pm/InitAppsHelper$ScanParams;

    const/4 v10, 0x5

    const/high16 v11, 0x800000

    const/high16 v12, 0x10000

    const/4 v13, 0x1

    if-nez v2, :cond_1

    const-wide/32 v14, 0x40000

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_ALLOWED_SYSTEM_PRELOAD_APPS:Z

    if-eqz v2, :cond_0

    iget v2, v9, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    and-int v3, v2, v12

    if-eqz v3, :cond_0

    const/high16 v3, 0x4000000

    and-int/2addr v3, v2

    if-nez v3, :cond_0

    and-int/2addr v2, v11

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/SystemConfig;->mAllowedSystemPreloadApps:Ljava/util/Set;

    iget-object v3, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "addForInitLI"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget v3, v9, Lcom/android/server/pm/InitAppsHelper$ScanParams;->parseFlags:I

    iget v4, v9, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    new-instance v5, Landroid/os/UserHandle;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, v9, Lcom/android/server/pm/InitAppsHelper$ScanParams;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x0

    move v2, v13

    goto :goto_2

    :goto_0
    :try_start_2
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    :goto_1
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1
    instance-of v0, v2, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_7

    check-cast v2, Lcom/android/server/pm/PackageManagerException;

    iget v0, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v2

    move v2, v0

    move-object/from16 v0, v16

    :goto_2
    iget v3, v9, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_4

    if-eq v2, v13, :cond_4

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v4, v9, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    iget-object v5, v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v6, v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object v11, v8, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    iget-object v8, v8, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    monitor-exit v5

    goto :goto_5

    :goto_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    :goto_5
    iget v0, v9, Lcom/android/server/pm/InitAppsHelper$ScanParams;->scanFlags:I

    and-int/2addr v0, v12

    if-nez v0, :cond_6

    if-eq v2, v13, :cond_6

    iget-object v0, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v0, :cond_5

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v2, v2, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_5

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but, It will be installed later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Deleting invalid package at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v1, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected exception occurred while parsing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final reconcileInstallPackages(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 12

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v3, 0x40000

    :try_start_1
    const-string/jumbo v0, "reconcilePackages"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v10, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v11
    :try_end_1
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, p1

    move-object v7, p2

    :try_start_2
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, p1

    goto :goto_0

    :goto_1
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    const-string/jumbo v0, "Reconciliation failed..."

    invoke-virtual {p2, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_0
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    const/4 p0, 0x0

    return-object p0

    :goto_3
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method

.method public final releaseWakeLock(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    const-string/jumbo p2, "PackageManager"

    const-string v0, "Error while releasing installer lock"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    monitor-exit p1

    :goto_1
    return-void

    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final renameAndUpdatePaths(Ljava/util/List;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mScanFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/server/pm/AsecInstallHelper;->doRenameAsec(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/InstallPackageHelper;->doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_1
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_0

    :goto_2
    const/4 p1, 0x0

    invoke-virtual {v2, p1, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    const/4 p0, 0x1

    return p0

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public final restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v0

    sget-object v9, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/high16 v9, 0x8000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    if-nez v6, :cond_2

    move v0, v5

    goto :goto_4

    :cond_2
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v9

    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_1
    monitor-exit v9

    goto :goto_4

    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_4
    :goto_3
    move v0, v4

    :goto_4
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v10, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v10, :cond_5

    iput v5, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    :cond_5
    iget v10, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_1
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget v9, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    const-wide/32 v11, 0x40000

    if-ne v9, v5, :cond_15

    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v9, :cond_6

    const/4 v13, 0x7

    invoke-virtual {v9, v13}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_6
    const/4 v9, -0x1

    if-eqz v0, :cond_c

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_7
    const-string/jumbo v13, "PackageManager"

    const-string/jumbo v0, "User "

    iget-object v14, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v14, :cond_8

    :goto_5
    move v0, v4

    goto :goto_9

    :cond_8
    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v15, v14, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v7, v14, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v15, v14, v7}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/backup/IBackupManager;

    if-eqz v7, :cond_b

    if-ne v3, v9, :cond_9

    move v14, v4

    goto :goto_6

    :cond_9
    move v14, v3

    :goto_6
    const-string/jumbo v15, "restore"

    invoke-static {v11, v12, v15, v10}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :try_start_2
    invoke-interface {v7, v14}, Landroid/app/backup/IBackupManager;->isUserReadyForBackup(I)Z

    move-result v15

    if-eqz v15, :cond_a

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v14, v0, v10}, Landroid/app/backup/IBackupManager;->restoreAtInstallForUser(ILjava/lang/String;I)V

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not ready. Restore at install didn\'t take place."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_7
    const-string v7, "Exception trying to enqueue restore"

    invoke-static {v13, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_1
    :goto_8
    move v0, v5

    goto :goto_9

    :cond_b
    const-string v0, "Backup Manager not found!"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    :goto_9
    if-nez v0, :cond_d

    if-eqz v6, :cond_d

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v0, :cond_e

    move v0, v4

    :cond_d
    move v3, v10

    move-wide v9, v11

    goto/16 :goto_f

    :cond_e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v7

    :try_start_3
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    if-eqz v13, :cond_f

    iget v9, v13, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v13, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v14

    invoke-virtual {v13, v6, v5}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v3

    :goto_a
    move-wide v15, v14

    move v14, v9

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_e

    :cond_f
    new-array v3, v4, [I

    const-wide/16 v14, -0x1

    goto :goto_a

    :goto_b
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v6

    const/high16 v7, 0x40000

    and-int/2addr v7, v6

    if-nez v7, :cond_11

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_10

    goto :goto_c

    :cond_10
    move v6, v4

    goto :goto_d

    :cond_11
    :goto_c
    move v6, v5

    :goto_d
    if-eqz v13, :cond_12

    if-eqz v6, :cond_12

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v17

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v7, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v3}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    invoke-static {v3}, Landroid/os/UserHandle;->fromUserHandles(Ljava/util/List;)[I

    move-result-object v13

    move/from16 v18, v10

    move-wide v9, v11

    move-object v12, v0

    move-object v11, v6

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    move/from16 v3, v18

    move v0, v5

    goto :goto_f

    :cond_12
    move v3, v10

    move-wide v9, v11

    move v0, v4

    goto :goto_f

    :goto_e
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_f
    if-eqz v0, :cond_16

    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_13

    goto :goto_11

    :cond_13
    if-eqz v8, :cond_14

    const/16 v6, 0x10

    invoke-virtual {v8, v6}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_10

    :cond_14
    move v5, v4

    :goto_10
    new-instance v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v1, v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-boolean v5, v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$1:Z

    iput-object v2, v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/pm/InstallRequest;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iput-object v6, v2, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    goto :goto_11

    :cond_15
    move v3, v10

    move-wide v9, v11

    :cond_16
    :goto_11
    if-eqz v0, :cond_17

    if-eqz v8, :cond_19

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    const/16 v6, 0x10

    :try_start_5
    invoke-virtual {v8, v6, v4}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    monitor-exit v1

    goto :goto_12

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_17
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_18
    const-string/jumbo v0, "postInstall"

    invoke-static {v9, v10, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    :goto_12
    return-void

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public final scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    iget-object v9, v3, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v4, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct {v4, v5, v6}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    new-instance v5, Lcom/android/server/pm/InitAppsHelper$ScanParams;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1, v2, v6}, Lcom/android/server/pm/InitAppsHelper$ScanParams;-><init>(Ljava/io/File;IILcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v11, v0, v8

    new-instance v12, Ljava/io/File;

    iget-object v13, v11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v5}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V

    invoke-virtual {v10, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v7

    :goto_1
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v10, v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;->f$0:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v7

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_7

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    iget-object v4, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    iget-object v5, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/apex/ApexInfo;

    const/high16 v5, 0x4000000

    or-int/2addr v5, v2

    iget-object v6, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v9, v6}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result v6

    or-int/2addr v5, v6

    iget-boolean v6, v14, Landroid/apex/ApexInfo;->isFactory:Z

    if-nez v6, :cond_3

    and-int/lit8 v6, v1, -0x11

    or-int/lit8 v5, v5, 0x4

    move v15, v6

    move v6, v5

    move v5, v15

    goto :goto_3

    :cond_3
    move v6, v5

    move v5, v1

    :goto_3
    if-nez v4, :cond_5

    :try_start_0
    iget-object v4, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    new-instance v8, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-direct {v8, v14}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;)V

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v3, v13, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    iget-boolean v4, v14, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v14, Landroid/apex/ApexInfo;->isActive:Z

    if-nez v4, :cond_4

    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    new-instance v4, Lcom/android/server/pm/ApexManager$ScanResult;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v14, v4, Lcom/android/server/pm/ApexManager$ScanResult;->apexInfo:Landroid/apex/ApexInfo;

    iput-object v3, v4, Lcom/android/server/pm/ApexManager$ScanResult;->pkg:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-object v5, v4, Lcom/android/server/pm/ApexManager$ScanResult;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p0

    goto :goto_2

    :goto_5
    invoke-static {v14}, Lcom/android/server/pm/InstallPackageHelper;->tryToRecover(Landroid/apex/ApexInfo;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to scan: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    instance-of v0, v4, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_6

    invoke-static {v14}, Lcom/android/server/pm/InstallPackageHelper;->tryToRecover(Landroid/apex/ApexInfo;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to parse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected exception occurred while parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    return-object v11
.end method

.method public final scanInstallPackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 22

    new-instance v9, Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/InstallRequest;

    iget-object v13, v12, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    const/4 v14, 0x0

    if-nez v13, :cond_1

    const/16 v0, -0x74

    const-string v1, "Failed to obtain package to scan"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return v14

    :cond_1
    iput v11, v12, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p4

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_2
    move v0, v1

    iget-object v1, v12, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget v2, v12, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    iget v3, v12, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    const/4 v8, 0x0

    if-nez v7, :cond_3

    move-object v7, v8

    move-object/from16 v16, v7

    goto :goto_1

    :cond_3
    iget-object v7, v7, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    move-object/from16 v16, v8

    :goto_1
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    const-string/jumbo v0, "scanPackage"
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v17, v14

    move-object/from16 v18, v15

    const-wide/32 v14, 0x40000

    :try_start_1
    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, p0

    move/from16 v19, v11

    move-wide/from16 v20, v14

    move-object/from16 v11, v16

    const/4 v14, 0x2

    :try_start_2
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    iput-object v1, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v1, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v14}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_4
    move-object/from16 v1, v18

    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x5

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in multi-package install request."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v3, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_5
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    monitor-enter v2
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingPackages:Ljava/util/Set;

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v0, "Scanning Failed."

    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in pending install requests."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v5, -0x28

    invoke-direct {v4, v3, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(IILjava/lang/String;)V

    invoke-virtual {v12, v0, v4}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    monitor-exit v2

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_6
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v2, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sIsRduDevice:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    if-nez v2, :cond_8

    const-string v2, "/system/etc/ldu_blocklist.xml"

    invoke-static {v2}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    :cond_8
    sget-boolean v2, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sBypassBlocklist:Z

    if-eqz v2, :cond_9

    move/from16 v2, v17

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_19

    :goto_3
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v2, v2, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    const-string/jumbo v3, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    if-nez v2, :cond_b

    :cond_a
    :goto_4
    move/from16 v2, v19

    goto :goto_6

    :cond_b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager$Property;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move/from16 v2, v17

    goto :goto_6

    :cond_e
    :goto_5
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :goto_6
    if-nez v2, :cond_f

    const-string/jumbo v0, "Update attempted to change value of android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    const/4 v1, -0x7

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    :goto_7
    return v17

    :cond_f
    iget v2, v12, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    move/from16 v2, v19

    goto :goto_8

    :cond_10
    move/from16 v2, v17

    :goto_8
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    const/4 v3, -0x1

    if-nez v2, :cond_11

    invoke-virtual {v0, v12}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v4, p2

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    :goto_9
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v13}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    move-object/from16 v4, p3

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_0

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v1

    sget-object v2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    goto :goto_a

    :cond_12
    move/from16 v19, v17

    :goto_a
    if-eqz v19, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget v5, v12, Lcom/android/server/pm/InstallRequest;->mUserId:I

    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    invoke-static {v4}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const-wide/16 v13, 0x0

    if-eq v5, v3, :cond_14

    :try_start_6
    invoke-interface {v2, v4, v13, v14, v5}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_13

    :catch_1
    move-object v8, v11

    goto :goto_d

    :cond_13
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_14
    move/from16 v3, v17

    :goto_b
    array-length v5, v6

    if-ge v3, v5, :cond_16

    aget v5, v6, v3

    invoke-interface {v2, v4, v13, v14, v5}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-nez v7, :cond_15

    goto :goto_c

    :cond_15
    invoke-static {v1, v7, v4, v5}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_16
    :goto_d
    if-eqz v8, :cond_18

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_e

    :cond_17
    iput-object v8, v12, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    goto/16 :goto_0

    :cond_18
    :goto_e
    const-string v0, "Failed to obtain the responsible installer info"

    const/16 v1, -0x27

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {v12, v11, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return v17

    :cond_19
    :try_start_7
    const-string/jumbo v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "This package ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "] is forbidden to install"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "This package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is forbidden to install"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x6e

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_f
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    :catchall_1
    move-exception v0

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
    :try_end_9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_2
    move-exception v0

    move/from16 v17, v14

    :goto_10
    const-string/jumbo v1, "Scanning Failed."

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return v17

    :cond_1a
    move/from16 v19, v11

    return v19
.end method

.method public final scanPackageForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;
    .locals 42

    const-string/jumbo v15, "System package enabled; name: "

    const-string/jumbo v7, "System package disabled; name: "

    const-string/jumbo v8, "System package signature mismatch; name: "

    const-string/jumbo v9, "Package "

    const-string/jumbo v10, "System package updated; name: "

    const-string v11, "Inconsistent package setting of updated system app for "

    new-instance v12, Lcom/android/server/pm/InitAppScanMetrics;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/server/pm/InitAppScanMetrics;->mSignatureSchemeVersion:I

    iput v13, v12, Lcom/android/server/pm/InitAppScanMetrics;->mInitAppScanOutcome:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/pm/InitAppScanMetrics;->mTotalScanStartTimeMillis:J

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v13

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanRequest;

    move-result-object v5

    iget-object v1, v5, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v2, v5, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    const/16 v19, 0x1

    goto :goto_2

    :cond_2
    move/from16 v19, v13

    :goto_2
    if-eqz v19, :cond_3

    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_20

    :catch_0
    move-exception v0

    goto/16 :goto_1f

    :cond_3
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    :try_start_3
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v20

    if-eqz v16, :cond_4

    if-nez v19, :cond_4

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". To recover it, enable the system app and install it as non-updated system app."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v4, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_4

    invoke-virtual {v4, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v14, v11, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v14, v6}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11, v13}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    goto :goto_5

    :goto_4
    move-object/from16 v24, v3

    goto/16 :goto_1e

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_5
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_5

    const/16 v22, 0x1

    goto :goto_6

    :cond_5
    move/from16 v22, v13

    :goto_6
    if-eqz v16, :cond_7

    if-eqz v22, :cond_7

    :try_start_4
    new-instance v2, Lcom/android/server/pm/ScanRequest;

    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    iget-object v11, v5, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v14, v11

    iget-boolean v11, v5, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    move-object/from16 v23, v14

    iget-boolean v14, v5, Lcom/android/server/pm/ScanRequest;->mEnableAlignmentChecks:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v24, v3

    const/4 v3, 0x0

    move-object v0, v2

    move-object v2, v6

    const/4 v6, 0x0

    move-object/from16 v25, v7

    const/4 v7, 0x0

    move-object/from16 v26, v8

    const/4 v8, 0x0

    move/from16 v27, v13

    const/4 v13, 0x0

    move-object/from16 v35, v1

    move-object/from16 v34, v5

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v28, v15

    move-object/from16 v5, v23

    move-object/from16 v29, v25

    move-object/from16 v30, v26

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    :try_start_5
    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;Z)V

    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 v9, 0x1

    invoke-static {v1, v10, v2, v9}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    const-wide/16 v5, -0x1

    invoke-static {v0, v3, v2, v5, v6}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_9

    :goto_8
    move-object/from16 v12, v33

    goto/16 :goto_1e

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v33, v12

    goto/16 :goto_1e

    :cond_7
    move-object/from16 v35, v1

    move-object/from16 v24, v3

    move-object/from16 v34, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v28, v15

    const/4 v9, 0x1

    move-object/from16 v1, p1

    move/from16 v10, p3

    move-object v15, v0

    :cond_8
    :goto_9
    monitor-exit v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v16, :cond_9

    if-eqz v22, :cond_9

    move v13, v9

    goto :goto_a

    :cond_9
    const/4 v13, 0x0

    :goto_a
    if-eqz v19, :cond_a

    move-object/from16 v0, v35

    :try_start_6
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v9

    goto :goto_d

    :catchall_4
    move-exception v0

    :goto_b
    move-object/from16 v12, v33

    goto/16 :goto_20

    :catch_1
    move-exception v0

    :goto_c
    move-object/from16 v12, v33

    goto/16 :goto_1f

    :cond_a
    move-object/from16 v0, v35

    :cond_b
    const/4 v2, 0x0

    :goto_d
    if-eqz v19, :cond_c

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_c

    move v6, v9

    goto :goto_e

    :cond_c
    const/4 v6, 0x0

    :goto_e
    if-eqz v19, :cond_d

    move-object/from16 v3, v34

    iget-object v5, v3, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    if-eq v5, v3, :cond_d

    move v7, v9

    goto :goto_f

    :cond_d
    const/4 v7, 0x0

    :goto_f
    if-eqz v16, :cond_f

    if-eqz v22, :cond_f

    if-eqz v2, :cond_f

    if-nez v6, :cond_e

    if-eqz v7, :cond_f

    :cond_e
    move v2, v9

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const/4 v8, 0x5

    if-eqz v2, :cond_10

    iget-object v3, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v5, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v32

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11, v5}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v5, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_11

    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_6
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_10
    :goto_11
    if-eqz v16, :cond_14

    if-eqz v22, :cond_14

    if-nez v2, :cond_14

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    const/4 v11, 0x0

    invoke-static {v2, v1, v11}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SigningDetails;

    iget-object v3, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v2, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_12

    :cond_11
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Failed collect during scanPackageForInitLI"

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_12
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: updated version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_13

    iget-wide v3, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_13
    const-string/jumbo v0, "unknown"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " better than this "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0xc

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v11, 0x0

    if-eqz v16, :cond_15

    move/from16 v3, v20

    goto :goto_14

    :cond_15
    if-eqz v19, :cond_16

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v3, v9

    goto :goto_14

    :cond_16
    move v3, v11

    :goto_14
    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    iget-object v4, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    move/from16 v4, v16

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ScanPackageUtils;->collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V
    :try_end_c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v12, v33

    :try_start_d
    iput-boolean v3, v12, Lcom/android/server/pm/InitAppScanMetrics;->mIsFsiEnabled:Z

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v11

    goto :goto_15

    :cond_17
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :goto_15
    iput v1, v12, Lcom/android/server/pm/InitAppScanMetrics;->mNumApkSplits:I

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v1, v9, :cond_1a

    if-eq v1, v2, :cond_19

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1b

    if-eq v1, v3, :cond_18

    move v5, v11

    goto :goto_16

    :cond_18
    move v5, v3

    goto :goto_16

    :cond_19
    move v5, v2

    goto :goto_16

    :cond_1a
    move v5, v9

    :cond_1b
    :goto_16
    iput v5, v12, Lcom/android/server/pm/InitAppScanMetrics;->mSignatureSchemeVersion:I
    :try_end_d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v0, :cond_1c

    :try_start_e
    iget-object v1, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v1
    :try_end_e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-nez v1, :cond_1d

    :cond_1c
    move-object/from16 v33, v12

    goto :goto_17

    :cond_1d
    move-object/from16 v33, v12

    :try_start_f
    iget-wide v11, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v20

    cmp-long v1, v11, v20

    if-nez v1, :cond_1e

    goto :goto_17

    :cond_1e
    iget-object v1, v15, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    goto :goto_17

    :catchall_7
    move-exception v0

    move-object/from16 v33, v12

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v33, v12

    goto/16 :goto_c

    :goto_17
    if-eqz v4, :cond_22

    if-nez v22, :cond_22

    if-eqz v19, :cond_22

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1, v5, v9}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    const/16 v11, 0x8

    invoke-virtual {v1, v5, v11}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v30

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v23, "scanPackageInternalLI"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v22, -0x1

    const/16 v24, 0xd

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v26}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;Z)Lcom/android/server/pm/PackageFreezer;

    move-result-object v1
    :try_end_f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v35

    iget-object v3, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v38

    new-instance v40, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct/range {v40 .. v40}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/16 v41, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v39, 0x0

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v41}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_11
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto/16 :goto_1a

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_18

    :catchall_9
    move-exception v0

    :try_start_13
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v2

    :cond_1f
    if-nez v6, :cond_21

    if-eqz v7, :cond_20

    goto :goto_19

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; old: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " @ "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; new: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " @ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move v11, v9

    goto :goto_1b

    :cond_21
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v1, v15, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v3}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/io/File;Ljava/lang/String;)V

    :cond_22
    :goto_1a
    const/4 v11, 0x0

    :goto_1b
    const/high16 v0, 0x4000000

    and-int/2addr v0, v10

    if-eqz v0, :cond_23

    move/from16 v27, v9

    goto :goto_1c

    :cond_23
    const/16 v27, 0x0

    :goto_1c
    iget-object v0, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    if-eqz v0, :cond_24

    if-eqz v4, :cond_24

    if-nez v19, :cond_24

    if-nez v27, :cond_24

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isOverlayIsStatic()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/InstallPackageHelper;->hasLauncherEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/high16 v0, 0x8000000

    or-int/2addr v0, v10

    goto :goto_1d

    :cond_24
    move v0, v10

    :goto_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v6, p4

    move-object v0, v15

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanResult;

    move-result-object v0
    :try_end_13
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-object/from16 v12, v33

    :try_start_14
    invoke-virtual {v12, v9}, Lcom/android/server/pm/InitAppScanMetrics;->setInitAppScanOutcome(I)V

    new-instance v1, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v13, :cond_25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v17

    iget-boolean v5, v12, Lcom/android/server/pm/InitAppScanMetrics;->mIsFsiEnabled:Z

    iget v6, v12, Lcom/android/server/pm/InitAppScanMetrics;->mNumApkSplits:I

    iget v7, v12, Lcom/android/server/pm/InitAppScanMetrics;->mSignatureSchemeVersion:I

    iget v10, v12, Lcom/android/server/pm/InitAppScanMetrics;->mInitAppScanOutcome:I

    const/16 v4, 0x493

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIJI)V

    :cond_25
    return-object v1

    :goto_1e
    :try_start_15
    monitor-exit v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :try_start_16
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_16
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :catchall_a
    move-exception v0

    const/4 v13, 0x0

    goto :goto_20

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    goto :goto_1f

    :catchall_b
    move-exception v0

    goto :goto_1e

    :goto_1f
    :try_start_17
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v12, v1}, Lcom/android/server/pm/InitAppScanMetrics;->setInitAppScanOutcome(I)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :goto_20
    if-eqz v13, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v12, Lcom/android/server/pm/InitAppScanMetrics;->mTotalScanStartTimeMillis:J

    sub-long v9, v1, v3

    iget-boolean v6, v12, Lcom/android/server/pm/InitAppScanMetrics;->mIsFsiEnabled:Z

    iget v7, v12, Lcom/android/server/pm/InitAppScanMetrics;->mNumApkSplits:I

    iget v8, v12, Lcom/android/server/pm/InitAppScanMetrics;->mSignatureSchemeVersion:I

    iget v11, v12, Lcom/android/server/pm/InitAppScanMetrics;->mInitAppScanOutcome:I

    const/16 v5, 0x493

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIJI)V

    :cond_26
    throw v0
.end method

.method public final scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanResult;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/ScanRequest;

    move-result-object v6

    move-object v15, v0

    iget-object v4, v6, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v0, v6, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean v5, v5, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_2

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v4

    goto :goto_1

    :cond_2
    move-object v7, v0

    :goto_1
    const/high16 v8, 0x20000

    const/high16 v9, 0x80000

    if-eqz v7, :cond_8

    const/high16 v10, 0x10000

    or-int v10, p3, v10

    iget v7, v7, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 v11, v7, 0x8

    if-eqz v11, :cond_3

    const/high16 v10, 0x30000

    or-int v10, p3, v10

    :cond_3
    and-int v11, v7, v8

    const/high16 v12, 0x40000

    if-eqz v11, :cond_4

    or-int/2addr v10, v12

    :cond_4
    and-int v11, v7, v12

    if-eqz v11, :cond_5

    or-int/2addr v10, v9

    :cond_5
    and-int v11, v7, v9

    if-eqz v11, :cond_6

    const/high16 v11, 0x100000

    or-int/2addr v10, v11

    :cond_6
    const/high16 v11, 0x200000

    and-int v12, v7, v11

    if-eqz v12, :cond_7

    or-int/2addr v10, v11

    :cond_7
    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v7, v11

    if-eqz v7, :cond_9

    const/high16 v7, 0x400000

    or-int/2addr v10, v7

    goto :goto_2

    :cond_8
    move/from16 v10, p3

    :cond_9
    :goto_2
    if-eqz v4, :cond_c

    if-nez p6, :cond_a

    move v7, v2

    goto :goto_3

    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    :goto_3
    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v11

    if-eqz v11, :cond_b

    or-int/lit16 v10, v10, 0x2000

    :cond_b
    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, 0x8000

    or-int/2addr v10, v7

    :cond_c
    and-int v7, v10, v9

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result v7

    const/16 v9, 0x1c

    if-ge v7, v9, :cond_d

    move v7, v3

    goto :goto_4

    :cond_d
    move v7, v2

    :goto_4
    and-int v9, v10, v8

    if-nez v9, :cond_10

    invoke-static {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v9

    if-nez v9, :cond_10

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    if-nez v7, :cond_10

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v7

    :try_start_0
    iget-object v9, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v2}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_f

    :try_start_1
    iget v9, v9, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_e

    move v2, v3

    :cond_e
    if-eqz v2, :cond_f

    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v2

    if-eqz v2, :cond_f

    or-int/2addr v10, v8

    :cond_f
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    goto :goto_7

    :goto_6
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_10
    :goto_7
    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-static {v1, v10, v2, v5}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    iget-object v2, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    move/from16 v9, p2

    :try_start_3
    invoke-virtual {v15, v1, v9, v10}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    move-object v3, v0

    new-instance v0, Lcom/android/server/pm/ScanRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v5, v2

    :try_start_4
    iget-object v2, v6, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v7, v3

    iget-object v3, v6, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v8, v5

    :try_start_5
    iget-object v5, v6, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v10, v7

    iget-object v7, v6, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v11, v8

    :try_start_6
    iget-object v8, v6, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v12, v11

    :try_start_7
    iget-boolean v11, v6, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    iget-boolean v14, v6, Lcom/android/server/pm/ScanRequest;->mEnableAlignmentChecks:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v13, p7

    move-object v6, v10

    move-object/from16 v16, v12

    move/from16 v10, p3

    move-object/from16 v12, p6

    :try_start_8
    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;Z)V

    iget-object v1, v15, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    move-wide/from16 v3, p4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    monitor-exit v16

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v16, v12

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v16, v2

    :goto_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method
