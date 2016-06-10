.class Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;
.super Ljava/util/Timer;
.source "SourceFile"


# instance fields
.field private processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
    .locals 6

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 116
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 117
    new-instance v1, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;

    invoke-direct {v1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V

    .line 130
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->schedule(Ljava/util/TimerTask;JJ)V

    .line 131
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->scan()V

    return-void
.end method

.method private scan()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v0, v1

    .line 139
    :goto_0
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 140
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    .line 141
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    new-instance v3, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-direct {v3, v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    aput-object v3, v2, v0

    .line 142
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "worker "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->setName(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    aget-object v3, v2, v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V

    .line 144
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->start()V

    .line 139
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 143
    goto :goto_1

    .line 148
    :cond_4
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    aget-object v2, v2, v0

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 149
    const-wide/16 v6, 0x4e20

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 150
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->interrupt()V

    .line 152
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    aget-object v2, v2, v0

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Z

    move-result v2

    .line 153
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v3

    new-instance v6, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v7, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-direct {v6, v7}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    aput-object v6, v3, v0

    .line 154
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v3

    aget-object v3, v3, v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "worker "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->setName(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v3}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v3, v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V

    .line 156
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    # getter for: Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->start()V

    goto :goto_2
.end method
