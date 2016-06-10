.class final Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/Y;


# instance fields
.field private a:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/p;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/p;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/p;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v7/widget/o;

.field private e:Z

.field private f:Landroid/support/v7/widget/X;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/o;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/n;-><init>(Landroid/support/v7/widget/o;Z)V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/o;Z)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v4/util/Pools$Pool;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/n;->e:Z

    .line 77
    new-instance v0, Landroid/support/v7/widget/X;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/X;-><init>(Landroid/support/v7/widget/Y;)V

    iput-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/X;

    .line 78
    return-void
.end method

.method private a(Landroid/support/v7/widget/p;I)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/o;->a(Landroid/support/v7/widget/p;)V

    .line 309
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v0, :pswitch_data_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/o;->a(II)V

    .line 315
    :goto_0
    return-void

    .line 314
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/o;->c(II)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 706
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 707
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 706
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 709
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 710
    return-void
.end method

.method private b(Landroid/support/v7/widget/p;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 225
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iget v0, p1, Landroid/support/v7/widget/p;->b:I

    iget v3, p1, Landroid/support/v7/widget/p;->a:I

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/n;->d(II)I

    move-result v4

    .line 244
    iget v3, p1, Landroid/support/v7/widget/p;->b:I

    .line 246
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    :goto_0
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    .line 256
    :goto_1
    iget v7, p1, Landroid/support/v7/widget/p;->c:I

    if-ge v3, v7, :cond_6

    .line 257
    iget v7, p1, Landroid/support/v7/widget/p;->b:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 258
    iget v8, p1, Landroid/support/v7/widget/p;->a:I

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/n;->d(II)I

    move-result v8

    .line 263
    iget v7, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v7, :pswitch_data_1

    move v7, v2

    .line 271
    :goto_2
    if-eqz v7, :cond_4

    .line 272
    add-int/lit8 v5, v5, 0x1

    .line 256
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 252
    goto :goto_0

    .line 265
    :pswitch_2
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_2

    .line 268
    :pswitch_3
    if-ne v8, v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_2

    .line 275
    :cond_4
    iget v7, p1, Landroid/support/v7/widget/p;->a:I

    invoke-virtual {p0, v7, v6, v5}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v6

    .line 279
    invoke-direct {p0, v6, v4}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;I)V

    .line 280
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 281
    iget v6, p1, Landroid/support/v7/widget/p;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 282
    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v8

    .line 285
    goto :goto_3

    .line 288
    :cond_6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 289
    if-lez v5, :cond_7

    .line 290
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    invoke-virtual {p0, v0, v6, v5}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v0

    .line 294
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;I)V

    .line 295
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 305
    :cond_7
    return-void

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 263
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private b(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 405
    :goto_0
    if-ge v3, v4, :cond_3

    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 407
    iget v5, v0, Landroid/support/v7/widget/p;->a:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 408
    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/n;->a(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    move v0, v1

    .line 421
    :goto_1
    return v0

    .line 411
    :cond_0
    iget v5, v0, Landroid/support/v7/widget/p;->a:I

    if-nez v5, :cond_2

    .line 413
    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v6, v0, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v5, v6

    .line 414
    iget v0, v0, Landroid/support/v7/widget/p;->b:I

    :goto_2
    if-ge v0, v5, :cond_2

    .line 415
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/n;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 416
    goto :goto_1

    .line 414
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 405
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 421
    goto :goto_1
.end method

.method private c(Landroid/support/v7/widget/p;)V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v0, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->b:I

    iget v2, p1, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/o;->d(II)V

    .line 446
    :goto_0
    return-void

    .line 438
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->b:I

    iget v2, p1, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/o;->e(II)V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->b:I

    iget v2, p1, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/o;->b(II)V

    goto :goto_0

    .line 445
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->b:I

    iget v2, p1, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/o;->c(II)V

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private d(II)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 326
    iget v2, v0, Landroid/support/v7/widget/p;->a:I

    if-ne v2, v6, :cond_9

    .line 328
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    if-ge v2, v3, :cond_1

    .line 329
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    .line 330
    iget v2, v0, Landroid/support/v7/widget/p;->c:I

    .line 335
    :goto_1
    if-lt v1, v3, :cond_6

    if-gt v1, v2, :cond_6

    .line 337
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    if-ne v3, v2, :cond_3

    .line 338
    if-nez p2, :cond_2

    .line 339
    iget v2, v0, Landroid/support/v7/widget/p;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->c:I

    .line 344
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 324
    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 332
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    .line 333
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    goto :goto_1

    .line 340
    :cond_2
    if-ne p2, v5, :cond_0

    .line 341
    iget v2, v0, Landroid/support/v7/widget/p;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->c:I

    goto :goto_2

    .line 346
    :cond_3
    if-nez p2, :cond_5

    .line 347
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    .line 352
    :cond_4
    :goto_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 348
    :cond_5
    if-ne p2, v5, :cond_4

    .line 349
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    goto :goto_4

    .line 354
    :cond_6
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    if-ge v1, v2, :cond_8

    .line 356
    if-nez p2, :cond_7

    .line 357
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    .line 358
    iget v2, v0, Landroid/support/v7/widget/p;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->c:I

    move v0, v1

    goto :goto_3

    .line 359
    :cond_7
    if-ne p2, v5, :cond_8

    .line 360
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    .line 361
    iget v2, v0, Landroid/support/v7/widget/p;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->c:I

    :cond_8
    move v0, v1

    .line 364
    goto :goto_3

    .line 365
    :cond_9
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    if-gt v2, v1, :cond_b

    .line 366
    iget v2, v0, Landroid/support/v7/widget/p;->a:I

    if-nez v2, :cond_a

    .line 367
    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    sub-int v0, v1, v0

    goto :goto_3

    .line 368
    :cond_a
    iget v2, v0, Landroid/support/v7/widget/p;->a:I

    if-ne v2, v5, :cond_d

    .line 369
    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 372
    :cond_b
    if-nez p2, :cond_c

    .line 373
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    move v0, v1

    goto :goto_3

    .line 374
    :cond_c
    if-ne p2, v5, :cond_d

    .line 375
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    :cond_d
    move v0, v1

    goto :goto_3

    .line 388
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_12

    .line 389
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 390
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    if-ne v3, v6, :cond_11

    .line 391
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    if-gez v3, :cond_10

    .line 392
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 388
    :cond_10
    :goto_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    .line 395
    :cond_11
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    if-gtz v3, :cond_10

    .line 396
    iget-object v3, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    goto :goto_6

    .line 400
    :cond_12
    return v1
.end method


# virtual methods
.method final a(I)I
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/n;->a(II)I

    move-result v0

    return v0
.end method

.method final a(II)I
    .locals 5

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 462
    :goto_0
    if-ge p2, v2, :cond_4

    .line 463
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 464
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 465
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    if-ne v3, v1, :cond_1

    .line 466
    iget v1, v0, Landroid/support/v7/widget/p;->c:I

    .line 462
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 468
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    if-ge v3, v1, :cond_2

    .line 469
    add-int/lit8 v1, v1, -0x1

    .line 471
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    if-gt v0, v1, :cond_0

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 475
    :cond_3
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    if-gt v3, v1, :cond_0

    .line 476
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 477
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v4, v0, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 478
    const/4 v1, -0x1

    .line 486
    :cond_4
    return v1

    .line 480
    :cond_5
    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 481
    :cond_6
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    if-nez v3, :cond_0

    .line 482
    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final a(III)Landroid/support/v7/widget/p;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 687
    if-nez v0, :cond_0

    .line 688
    new-instance v0, Landroid/support/v7/widget/p;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/widget/p;-><init>(III)V

    .line 694
    :goto_0
    return-object v0

    .line 690
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/p;->a:I

    .line 691
    iput p2, v0, Landroid/support/v7/widget/p;->b:I

    .line 692
    iput p3, v0, Landroid/support/v7/widget/p;->c:I

    goto :goto_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->a(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->a(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public final a(Landroid/support/v7/widget/p;)V
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Landroid/support/v7/widget/n;->e:Z

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 702
    :cond_0
    return-void
.end method

.method final b()V
    .locals 14

    .prologue
    const/4 v7, -0x1

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/X;

    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/X;->a(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v9, v3

    .line 93
    :goto_0
    if-ge v9, v10, :cond_d

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 95
    iget v1, v0, Landroid/support/v7/widget/p;->a:I

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1425
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    goto :goto_1

    .line 2131
    :pswitch_1
    iget v11, v0, Landroid/support/v7/widget/p;->b:I

    .line 2133
    iget v1, v0, Landroid/support/v7/widget/p;->b:I

    iget v4, v0, Landroid/support/v7/widget/p;->c:I

    add-int v5, v1, v4

    .line 2135
    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    move v6, v7

    move v8, v3

    :goto_2
    if-ge v4, v5, :cond_3

    .line 2137
    iget-object v1, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v1, v4}, Landroid/support/v7/widget/o;->a(I)Landroid/support/v7/widget/ay;

    move-result-object v1

    .line 2138
    if-nez v1, :cond_0

    invoke-direct {p0, v4}, Landroid/support/v7/widget/n;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2145
    :cond_0
    if-nez v6, :cond_f

    .line 2148
    invoke-virtual {p0, v2, v11, v8}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v1

    .line 2149
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/p;)V

    move v1, v2

    :goto_3
    move v6, v2

    .line 2165
    :goto_4
    if-eqz v1, :cond_2

    .line 2166
    sub-int v1, v4, v8

    .line 2167
    sub-int v4, v5, v8

    move v5, v2

    .line 2135
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v8, v5

    move v5, v4

    move v4, v1

    goto :goto_2

    .line 2156
    :cond_1
    if-ne v6, v2, :cond_e

    .line 2159
    invoke-virtual {p0, v2, v11, v8}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v1

    .line 2160
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    move v1, v2

    :goto_6
    move v6, v3

    .line 2163
    goto :goto_4

    .line 2170
    :cond_2
    add-int/lit8 v1, v8, 0x1

    move v13, v4

    move v4, v5

    move v5, v1

    move v1, v13

    goto :goto_5

    .line 2173
    :cond_3
    iget v1, v0, Landroid/support/v7/widget/p;->c:I

    if-eq v8, v1, :cond_4

    .line 2174
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 2175
    invoke-virtual {p0, v2, v11, v8}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v0

    .line 2177
    :cond_4
    if-nez v6, :cond_5

    .line 2178
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/p;)V

    goto :goto_1

    .line 2180
    :cond_5
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    goto :goto_1

    .line 2185
    :pswitch_2
    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    .line 2187
    iget v1, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v0, Landroid/support/v7/widget/p;->c:I

    add-int v8, v1, v5

    .line 2189
    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    move v6, v7

    move v1, v3

    :goto_7
    if-ge v5, v8, :cond_a

    .line 2190
    iget-object v11, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v11, v5}, Landroid/support/v7/widget/o;->a(I)Landroid/support/v7/widget/ay;

    move-result-object v11

    .line 2191
    if-nez v11, :cond_6

    invoke-direct {p0, v5}, Landroid/support/v7/widget/n;->b(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2192
    :cond_6
    if-nez v6, :cond_7

    .line 2193
    invoke-virtual {p0, v12, v4, v1}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v1

    .line 2194
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/p;)V

    move v1, v3

    move v4, v5

    :cond_7
    move v6, v4

    move v4, v1

    move v1, v2

    .line 2208
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 2189
    add-int/lit8 v5, v5, 0x1

    move v13, v1

    move v1, v4

    move v4, v6

    move v6, v13

    goto :goto_7

    .line 2200
    :cond_8
    if-ne v6, v2, :cond_9

    .line 2201
    invoke-virtual {p0, v12, v4, v1}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v1

    .line 2202
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    move v1, v3

    move v4, v5

    :cond_9
    move v6, v4

    move v4, v1

    move v1, v3

    .line 2206
    goto :goto_8

    .line 2210
    :cond_a
    iget v5, v0, Landroid/support/v7/widget/p;->c:I

    if-eq v1, v5, :cond_b

    .line 2211
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 2212
    invoke-virtual {p0, v12, v4, v1}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v0

    .line 2214
    :cond_b
    if-nez v6, :cond_c

    .line 2215
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/p;)V

    goto/16 :goto_1

    .line 2217
    :cond_c
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    goto/16 :goto_1

    .line 3127
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    goto/16 :goto_1

    .line 113
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void

    :cond_e
    move v1, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    goto/16 :goto_3

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final b(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    iget-object v2, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v2, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final c()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 119
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->a(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method final c(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/n;->a(III)Landroid/support/v7/widget/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v1, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 5

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/support/v7/widget/n;->c()V

    .line 534
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 535
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 536
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 537
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    packed-switch v3, :pswitch_data_0

    .line 535
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 539
    :pswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 540
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/o;->d(II)V

    goto :goto_1

    .line 543
    :pswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 544
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/o;->a(II)V

    goto :goto_1

    .line 547
    :pswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 548
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/o;->c(II)V

    goto :goto_1

    .line 551
    :pswitch_3
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 552
    iget-object v3, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    iget v0, v0, Landroid/support/v7/widget/p;->c:I

    invoke-interface {v3, v4, v0}, Landroid/support/v7/widget/o;->e(II)V

    goto :goto_1

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->a(Ljava/util/List;)V

    .line 560
    return-void

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
