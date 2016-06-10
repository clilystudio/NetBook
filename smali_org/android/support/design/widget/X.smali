.class final Landroid/support/design/widget/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/support/design/widget/X;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/support/design/widget/Z;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/X;->b:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Y;

    invoke-direct {v2, p0}, Landroid/support/design/widget/Y;-><init>(Landroid/support/design/widget/X;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/X;->c:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static a()Landroid/support/design/widget/X;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/support/design/widget/X;->a:Landroid/support/design/widget/X;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/support/design/widget/X;

    invoke-direct {v0}, Landroid/support/design/widget/X;-><init>()V

    sput-object v0, Landroid/support/design/widget/X;->a:Landroid/support/design/widget/X;

    .line 41
    :cond_0
    sget-object v0, Landroid/support/design/widget/X;->a:Landroid/support/design/widget/X;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/X;Landroid/support/design/widget/Z;)V
    .locals 2

    .prologue
    .line 28
    .line 5219
    iget-object v1, p0, Landroid/support/design/widget/X;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 5220
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/X;->d:Landroid/support/design/widget/Z;

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 5221
    :cond_0
    invoke-static {p1}, Landroid/support/design/widget/X;->a(Landroid/support/design/widget/Z;)Z

    .line 5223
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/support/design/widget/Z;)Z
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Landroid/support/design/widget/Z;->a(Landroid/support/design/widget/Z;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/K;

    .line 187
    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/design/widget/Z;)V
    .locals 6

    .prologue
    .line 203
    .line 208
    const/16 v0, 0xabe

    .line 214
    iget-object v1, p0, Landroid/support/design/widget/X;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Landroid/support/design/widget/X;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/X;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 216
    return-void
.end method

.method private f(Landroid/support/design/widget/K;)Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/design/widget/X;->d:Landroid/support/design/widget/Z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/X;->d:Landroid/support/design/widget/Z;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/Z;->a(Landroid/support/design/widget/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/K;)V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Landroid/support/design/widget/X;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/X;->f(Landroid/support/design/widget/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/support/design/widget/X;->d:Landroid/support/design/widget/Z;

    invoke-static {v0}, Landroid/support/design/widget/X;->a(Landroid/support/design/widget/Z;)Z

    .line 109
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

.method public final b(Landroid/support/design/widget/K;)V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Landroid/support/design/widget/X;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/X;->f(Landroid/support/design/widget/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/X;->d:Landroid/support/design/widget/Z;

    .line 125
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

.method public final c(Landroid/support/design/widget/K;)V
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Landroid/support/design/widget/X;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/X;->f(Landroid/support/design/widget/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/X;->d:Landroid/support/design/widget/Z;

    invoke-direct {p0, v0}, Landroid/support/design/widget/X;->b(Landroid/support/design/widget/Z;)V

    .line 137
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

.method public final d(Landroid/support/design/widget/K;)V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Landroid/support/design/widget/X;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/X;->f(Landroid/support/design/widget/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/X;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/X;->d:Landroid/support/design/widget/Z;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
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

.method public final e(Landroid/support/design/widget/K;)V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Landroid/support/design/widget/X;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/X;->f(Landroid/support/design/widget/K;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/design/widget/X;->d:Landroid/support/design/widget/Z;

    invoke-direct {p0, v0}, Landroid/support/design/widget/X;->b(Landroid/support/design/widget/Z;)V

    .line 153
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
