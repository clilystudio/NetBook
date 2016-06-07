.class public Lcom/umeng/update/net/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/update/net/e;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/umeng/update/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/update/net/DownloadingService;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/umeng/update/net/b;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 1073
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/update/net/DownloadingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1074
    const-string v1, "com.umeng.broadcast.download.msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1077
    const/high16 v2, 0x8000000

    .line 1075
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1078
    return-object v0
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1037
    if-nez p0, :cond_0

    .line 1038
    const/4 v0, 0x0

    .line 1044
    :goto_0
    return-object v0

    .line 1040
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1041
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 469
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 470
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    .line 471
    iget-object v2, v0, Lcom/umeng/update/net/s;->e:[J

    .line 473
    if-eqz v2, :cond_0

    aget-wide v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 474
    aget-wide v4, v2, v1

    long-to-float v1, v4

    aget-wide v2, v2, v8

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 475
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 477
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 478
    const/16 v1, 0x63

    .line 481
    :cond_0
    iget-object v2, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    iget-boolean v2, v2, Lcom/umeng/update/net/k;->h:Z

    if-nez v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/umeng/update/net/b;->a:Landroid/util/SparseArray;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    iget-object v2, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v2

    .line 484
    iget-object v3, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    .line 485
    iget-object v4, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    .line 484
    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;Lcom/umeng/update/net/k;II)Lcom/umeng/update/net/r;

    move-result-object v1

    .line 486
    iput-object v1, v0, Lcom/umeng/update/net/s;->b:Lcom/umeng/update/net/r;

    .line 487
    iget-object v0, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/update/net/r;->d()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 490
    :cond_1
    return-void
.end method

.method public final a(II)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 494
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 495
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    .line 496
    iget-object v2, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 499
    iget-boolean v1, v2, Lcom/umeng/update/net/k;->h:Z

    if-nez v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/umeng/update/net/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/umeng/update/net/b;->a:Landroid/util/SparseArray;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 502
    iget-object v0, v0, Lcom/umeng/update/net/s;->b:Lcom/umeng/update/net/r;

    .line 503
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p2, v10}, Lcom/umeng/update/net/r;->a(IIZ)Lcom/umeng/update/net/r;

    move-result-object v1

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/umeng/update/net/r;->a(Ljava/lang/CharSequence;)Lcom/umeng/update/net/r;

    .line 505
    iget-object v1, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/update/net/r;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 507
    :cond_0
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    .line 509
    const-string v1, "%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 510
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v2, v2, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    aput-object v2, v3, v4

    .line 508
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 516
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 517
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    .line 518
    if-eqz v0, :cond_0

    .line 519
    iget-object v0, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    .line 521
    iget-object v1, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/update/net/m;->a(Landroid/content/Context;)Lcom/umeng/update/net/m;

    move-result-object v1

    .line 522
    iget-object v2, v0, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    .line 523
    const/16 v4, 0x64

    .line 521
    invoke-virtual {v1, v2, v3, v4}, Lcom/umeng/update/net/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 525
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 526
    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v2, v0, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    .line 531
    const-string v3, "delta_update"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 533
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 534
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 535
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 537
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 538
    iget-object v0, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->d(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 542
    iput v6, v2, Landroid/os/Message;->what:I

    .line 543
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 544
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 545
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 546
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 547
    iget-object v3, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/update/net/DownloadingService;->d(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 552
    iput v6, v2, Landroid/os/Message;->what:I

    .line 553
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 554
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 555
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 558
    :try_start_0
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 559
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 572
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/b;->b:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    .line 575
    :cond_0
    return-void
.end method
