.class public Lcom/umeng/update/net/DownloadingService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static b:Z

.field private static final c:Ljava/lang/String;

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/update/net/k;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/update/net/s;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/Boolean;


# instance fields
.field a:Lcom/umeng/update/net/e;

.field private d:Landroid/app/NotificationManager;

.field private e:Lcom/umeng/update/net/p;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Handler;

.field private j:Landroid/os/Messenger;

.field private k:Lcom/umeng/update/net/v;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const-class v0, Lcom/umeng/update/net/DownloadingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->c:Ljava/lang/String;

    .line 154
    sput-boolean v1, Lcom/umeng/update/net/DownloadingService;->b:Z

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->h:Ljava/util/Map;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->i:Landroid/util/SparseArray;

    .line 1052
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->m:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 166
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/umeng/update/net/h;

    invoke-direct {v1, p0}, Lcom/umeng/update/net/h;-><init>(Lcom/umeng/update/net/DownloadingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->j:Landroid/os/Messenger;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/net/DownloadingService;->l:Z

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->e:Lcom/umeng/update/net/p;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/update/net/DownloadingService;Landroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/umeng/update/net/DownloadingService;->d:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a(Lcom/umeng/update/net/DownloadingService;Lcom/umeng/update/net/k;)V
    .locals 7

    .prologue
    .line 591
    .line 1592
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startDownload([mComponentName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1593
    iget-object v2, p1, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1594
    iget-object v2, p1, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1592
    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-static {p1}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/k;)I

    move-result v4

    .line 1597
    new-instance v0, Lcom/umeng/update/net/f;

    .line 1598
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/umeng/update/net/DownloadingService;->a:Lcom/umeng/update/net/e;

    move-object v1, p0

    move-object v3, p1

    .line 1597
    invoke-direct/range {v0 .. v6}, Lcom/umeng/update/net/f;-><init>(Lcom/umeng/update/net/DownloadingService;Landroid/content/Context;Lcom/umeng/update/net/k;IILcom/umeng/update/net/e;)V

    .line 1600
    new-instance v1, Lcom/umeng/update/net/s;

    invoke-direct {v1, p1, v4}, Lcom/umeng/update/net/s;-><init>(Lcom/umeng/update/net/k;I)V

    .line 1601
    iget-object v2, p0, Lcom/umeng/update/net/DownloadingService;->k:Lcom/umeng/update/net/v;

    invoke-virtual {v2, v4}, Lcom/umeng/update/net/v;->a(I)V

    .line 1602
    sget-object v2, Lcom/umeng/update/net/DownloadingService;->i:Landroid/util/SparseArray;

    .line 2092
    iget v3, v1, Lcom/umeng/update/net/s;->c:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1603
    iput-object v0, v1, Lcom/umeng/update/net/s;->a:Lcom/umeng/update/net/f;

    .line 1605
    invoke-virtual {v0}, Lcom/umeng/update/net/f;->start()V

    .line 591
    return-void
.end method

.method static synthetic a(Lcom/umeng/update/net/DownloadingService;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1054
    .line 4055
    sget-object v1, Lcom/umeng/update/net/DownloadingService;->m:Ljava/lang/Boolean;

    monitor-enter v1

    .line 4056
    :try_start_0
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4057
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show single toast.["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4058
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/DownloadingService;->m:Ljava/lang/Boolean;

    .line 4059
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->g:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/net/c;

    invoke-direct {v2, p0, p1}, Lcom/umeng/update/net/c;-><init>(Lcom/umeng/update/net/DownloadingService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4066
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->g:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/net/d;

    invoke-direct {v2, p0}, Lcom/umeng/update/net/d;-><init>(Lcom/umeng/update/net/DownloadingService;)V

    .line 4071
    const-wide/16 v4, 0x4b0

    .line 4066
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4055
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1052
    sput-object p0, Lcom/umeng/update/net/DownloadingService;->m:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->i:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->d:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->k:Lcom/umeng/update/net/v;

    invoke-virtual {v0}, Lcom/umeng/update/net/v;->a()Ljava/util/List;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    return-void

    .line 586
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 587
    iget-object v2, p0, Lcom/umeng/update/net/DownloadingService;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->c:Ljava/lang/String;

    const-string v1, "onBind "

    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->j:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 327
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 333
    sget-object v0, Lcom/umeng/update/net/DownloadingService;->c:Ljava/lang/String;

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/umeng/update/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->d:Landroid/app/NotificationManager;

    .line 335
    iput-object p0, p0, Lcom/umeng/update/net/DownloadingService;->f:Landroid/content/Context;

    .line 337
    new-instance v0, Lcom/umeng/update/net/v;

    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/update/net/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->k:Lcom/umeng/update/net/v;

    .line 339
    new-instance v0, Lcom/umeng/update/net/p;

    sget-object v1, Lcom/umeng/update/net/DownloadingService;->i:Landroid/util/SparseArray;

    sget-object v2, Lcom/umeng/update/net/DownloadingService;->h:Ljava/util/Map;

    iget-object v3, p0, Lcom/umeng/update/net/DownloadingService;->k:Lcom/umeng/update/net/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/update/net/p;-><init>(Landroid/util/SparseArray;Ljava/util/Map;Lcom/umeng/update/net/v;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->e:Lcom/umeng/update/net/p;

    .line 341
    new-instance v0, Lcom/umeng/update/net/a;

    invoke-direct {v0, p0}, Lcom/umeng/update/net/a;-><init>(Lcom/umeng/update/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->g:Landroid/os/Handler;

    .line 463
    new-instance v0, Lcom/umeng/update/net/b;

    invoke-direct {v0, p0}, Lcom/umeng/update/net/b;-><init>(Lcom/umeng/update/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/update/net/DownloadingService;->a:Lcom/umeng/update/net/e;

    .line 579
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1080
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/net/m;->a(Landroid/content/Context;)Lcom/umeng/update/net/m;

    move-result-object v0

    .line 1081
    const v1, 0x3f480

    invoke-virtual {v0, v1}, Lcom/umeng/update/net/m;->a(I)V

    .line 1082
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/net/m;->a(Landroid/content/Context;)Lcom/umeng/update/net/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/update/net/m;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1087
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    sget-object v1, Lcom/umeng/update/net/DownloadingService;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->e:Lcom/umeng/update/net/p;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/DownloadingService;Landroid/content/Intent;)Z

    .line 285
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 286
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService;->k:Lcom/umeng/update/net/v;

    invoke-virtual {v0}, Lcom/umeng/update/net/v;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/umeng/update/net/DownloadingService;->l:Z

    if-eqz v0, :cond_2

    .line 300
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 300
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    .line 306
    const/high16 v3, 0x40000000    # 2.0f

    .line 304
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 307
    invoke-virtual {p0}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    check-cast v0, Landroid/app/AlarmManager;

    .line 309
    const/4 v2, 0x3

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    .line 309
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/umeng/update/net/DownloadingService;->l:Z

    if-eqz v0, :cond_3

    .line 318
    invoke-direct {p0}, Lcom/umeng/update/net/DownloadingService;->d()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/net/DownloadingService;->l:Z

    .line 322
    :cond_3
    return v8

    :catch_0
    move-exception v0

    goto :goto_0
.end method
