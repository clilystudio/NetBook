.class public Lcom/nostra13/universalimageloader/core/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile e:Lcom/nostra13/universalimageloader/core/f;


# instance fields
.field private b:Lcom/nostra13/universalimageloader/core/g;

.field private c:Lcom/nostra13/universalimageloader/core/l;

.field private final d:Lcom/nostra13/universalimageloader/core/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/nostra13/universalimageloader/core/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/f;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/nostra13/universalimageloader/core/d/b;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/d/b;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->d:Lcom/nostra13/universalimageloader/core/d/a;

    .line 81
    return-void
.end method

.method private static a(Lcom/nostra13/universalimageloader/core/d;)Landroid/os/Handler;
    .locals 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/d;->r()Landroid/os/Handler;

    move-result-object v0

    .line 736
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/d;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    const/4 v0, 0x0

    .line 741
    :cond_0
    :goto_0
    return-object v0

    .line 738
    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 739
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method

.method public static a()Lcom/nostra13/universalimageloader/core/f;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/nostra13/universalimageloader/core/f;->e:Lcom/nostra13/universalimageloader/core/f;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lcom/nostra13/universalimageloader/core/f;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/f;->e:Lcom/nostra13/universalimageloader/core/f;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/nostra13/universalimageloader/core/f;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/f;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/core/f;->e:Lcom/nostra13/universalimageloader/core/f;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/f;->e:Lcom/nostra13/universalimageloader/core/f;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/d/a;Landroid/support/design/widget/K;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/f;->b()V

    .line 212
    if-nez p4, :cond_9

    .line 213
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/f;->d:Lcom/nostra13/universalimageloader/core/d/a;

    .line 215
    :goto_0
    if-nez p3, :cond_8

    .line 216
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    iget-object v5, v0, Lcom/nostra13/universalimageloader/core/g;->p:Lcom/nostra13/universalimageloader/core/d;

    .line 219
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/l;->b(Lcom/nostra13/universalimageloader/core/c/a;)V

    .line 221
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    .line 222
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/g;->a:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/nostra13/universalimageloader/core/d;->b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 227
    :goto_2
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    invoke-interface {v6, v2}, Lcom/nostra13/universalimageloader/core/d/a;->a(Landroid/graphics/Bitmap;)V

    .line 272
    :goto_3
    return-void

    .line 225
    :cond_0
    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/g;->a()Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/nostra13/universalimageloader/b/a;->a(Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/c;)Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v3

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/assist/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/assist/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v0, p2, v4}, Lcom/nostra13/universalimageloader/core/l;->a(Lcom/nostra13/universalimageloader/core/c/a;Ljava/lang/String;)V

    .line 235
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/g;->l:Lcom/nostra13/universalimageloader/a/b/a;

    invoke-interface {v0, v4}, Lcom/nostra13/universalimageloader/a/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Bitmap;

    .line 238
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    const-string v0, "Load image from memory cache [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/d;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    new-instance v0, Lcom/nostra13/universalimageloader/core/n;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/l;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/n;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/c;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/d/a;Landroid/support/design/widget/K;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 244
    new-instance v1, Lcom/nostra13/universalimageloader/core/r;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    invoke-static {v5}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v9, v0, v3}, Lcom/nostra13/universalimageloader/core/r;-><init>(Lcom/nostra13/universalimageloader/core/l;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/n;Landroid/os/Handler;)V

    .line 246
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/d;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/r;->run()V

    goto/16 :goto_3

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/l;->a(Lcom/nostra13/universalimageloader/core/r;)V

    goto/16 :goto_3

    .line 252
    :cond_3
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/d;->q()Lcom/nostra13/universalimageloader/core/b/a;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v9, p2}, Lcom/nostra13/universalimageloader/core/b/a;->a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c/a;)V

    .line 253
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    invoke-interface {v6, v9}, Lcom/nostra13/universalimageloader/core/d/a;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 256
    :cond_4
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/d;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/g;->a:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/nostra13/universalimageloader/core/d;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 262
    :cond_5
    :goto_4
    new-instance v0, Lcom/nostra13/universalimageloader/core/n;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/l;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/n;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/assist/c;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/d/a;Landroid/support/design/widget/K;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 264
    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    invoke-static {v5}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/l;Lcom/nostra13/universalimageloader/core/n;Landroid/os/Handler;)V

    .line 266
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/d;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->run()V

    goto/16 :goto_3

    .line 258
    :cond_6
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/d;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    invoke-interface {p2, v2}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_4

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/l;->a(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    goto/16 :goto_3

    :cond_8
    move-object v5, p3

    goto/16 :goto_1

    :cond_9
    move-object v6, p4

    goto/16 :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/nostra13/universalimageloader/core/g;)V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    if-nez p1, :cond_0

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/nostra13/universalimageloader/core/l;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/l;-><init>(Lcom/nostra13/universalimageloader/core/g;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->c:Lcom/nostra13/universalimageloader/core/l;

    .line 98
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6

    .prologue
    .line 340
    .line 1365
    new-instance v2, Lcom/nostra13/universalimageloader/core/c/b;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/c/b;-><init>(Landroid/widget/ImageView;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/f;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/d/a;Landroid/support/design/widget/K;)V

    .line 341
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/d/a;)V
    .locals 6

    .prologue
    .line 380
    .line 1474
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/f;->b()V

    .line 1476
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/g;->a()Lcom/nostra13/universalimageloader/core/assist/c;

    move-result-object v0

    .line 1479
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/f;->b:Lcom/nostra13/universalimageloader/core/g;

    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/g;->p:Lcom/nostra13/universalimageloader/core/d;

    .line 1482
    new-instance v2, Lcom/nostra13/universalimageloader/core/c/c;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, v0, v1}, Lcom/nostra13/universalimageloader/core/c/c;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/c;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    .line 1483
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/f;->a(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/c/a;Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/d/a;Landroid/support/design/widget/K;)V

    .line 381
    return-void
.end method
