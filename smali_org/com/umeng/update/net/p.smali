.class Lcom/umeng/update/net/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/update/net/s;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
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

.field private d:Lcom/umeng/update/net/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/umeng/update/net/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Ljava/util/Map;Lcom/umeng/update/net/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/update/net/s;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/update/net/k;",
            "Landroid/os/Messenger;",
            ">;",
            "Lcom/umeng/update/net/v;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    .line 72
    iput-object p2, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    .line 73
    iput-object p3, p0, Lcom/umeng/update/net/p;->d:Lcom/umeng/update/net/v;

    .line 74
    return-void
.end method

.method static a(Lcom/umeng/update/net/k;)I
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 221
    iget-object v1, p0, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    .line 220
    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 220
    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 222
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/update/net/p;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/update/net/r;II)V
    .locals 5

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 333
    const-string v0, "continue"

    .line 332
    invoke-static {p2, v0}, Lcom/umeng/update/net/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {p0, v0}, Lcom/umeng/update/net/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 336
    const-string v1, "cancel"

    .line 335
    invoke-static {p2, v1}, Lcom/umeng/update/net/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {p0, v1}, Lcom/umeng/update/net/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 337
    packed-switch p3, :pswitch_data_0

    .line 357
    :goto_0
    const v0, 0x1080038

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3026
    invoke-static {p0}, Lu/a/c;->a(Landroid/content/Context;)Lu/a/c;

    move-result-object v3

    const-string v4, "umeng_common_action_cancel"

    invoke-virtual {v3, v4}, Lu/a/c;->d(Ljava/lang/String;)I

    move-result v3

    .line 358
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/update/net/r;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 362
    :cond_0
    return-void

    .line 340
    :pswitch_0
    const v2, 0x1080024

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 344
    invoke-static {p0}, Lcom/alipay/sdk/b/b;->g(Landroid/content/Context;)I

    move-result v4

    .line 342
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {p1, v2, v3, v0}, Lcom/umeng/update/net/r;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 349
    :pswitch_1
    const v2, 0x1080023

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 352
    invoke-static {p0}, Lcom/alipay/sdk/b/b;->f(Landroid/content/Context;)I

    move-result v4

    .line 350
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {p1, v2, v3, v0}, Lcom/umeng/update/net/r;->a(ILjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 371
    .line 372
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 371
    check-cast v0, Landroid/app/ActivityManager;

    .line 374
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    move v0, v1

    .line 385
    :goto_0
    return v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 385
    goto :goto_0

    .line 379
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 380
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    .line 381
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;Lcom/umeng/update/net/k;II)Lcom/umeng/update/net/r;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 229
    new-instance v2, Lcom/umeng/update/net/r;

    invoke-direct {v2, v1}, Lcom/umeng/update/net/r;-><init>(Landroid/content/Context;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x8000000

    .line 230
    invoke-static {v1, v8, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1038
    invoke-static {v1}, Lu/a/c;->a(Landroid/content/Context;)Lu/a/c;

    move-result-object v3

    const-string v4, "umeng_common_start_download_notification"

    invoke-virtual {v3, v4}, Lu/a/c;->d(Ljava/lang/String;)I

    move-result v3

    .line 233
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-virtual {v2, v3}, Lcom/umeng/update/net/r;->d(Ljava/lang/CharSequence;)Lcom/umeng/update/util/a;

    move-result-object v3

    .line 235
    const v4, 0x1080081

    invoke-virtual {v3, v4}, Lcom/umeng/update/util/a;->a(I)Lcom/umeng/update/util/a;

    move-result-object v3

    .line 236
    invoke-virtual {v3, v0}, Lcom/umeng/update/util/a;->a(Landroid/app/PendingIntent;)Lcom/umeng/update/util/a;

    move-result-object v0

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/umeng/update/util/a;->a(J)Lcom/umeng/update/util/a;

    .line 239
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v1}, Landroid/support/v7/app/f;->i(Landroid/content/Context;)I

    move-result v4

    .line 239
    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 244
    const v4, 0x1050005

    .line 243
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 245
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 246
    const v5, 0x1050006

    .line 245
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 247
    invoke-static {v1}, Landroid/support/design/widget/am;->v(Landroid/content/Context;)I

    move-result v5

    .line 248
    const-string v6, "setWidth"

    .line 247
    invoke-virtual {v3, v5, v6, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 249
    invoke-static {v1}, Landroid/support/design/widget/am;->v(Landroid/content/Context;)I

    move-result v0

    .line 250
    const-string v5, "setHeight"

    .line 249
    invoke-virtual {v3, v0, v5, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 253
    :try_start_0
    const-string v0, "com.android.internal.R$drawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 255
    const-string v4, "notify_panel_notification_icon_bg_tile"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 256
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 258
    invoke-static {v1}, Landroid/support/design/widget/am;->v(Landroid/content/Context;)I

    move-result v4

    .line 259
    const-string v5, "setBackgroundResource"

    .line 258
    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    invoke-virtual {v2, v3}, Lcom/umeng/update/net/r;->a(Landroid/widget/RemoteViews;)Lcom/umeng/update/net/r;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2029
    invoke-static {v1}, Lu/a/c;->a(Landroid/content/Context;)Lu/a/c;

    move-result-object v5

    const-string v6, "umeng_common_download_notification_prefix"

    invoke-virtual {v5, v6}, Lu/a/c;->d(Ljava/lang/String;)I

    move-result v5

    .line 304
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    iget-object v4, p2, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v2, v0}, Lcom/umeng/update/net/r;->b(Ljava/lang/CharSequence;)Lcom/umeng/update/net/r;

    move-result-object v0

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/umeng/update/net/r;->a(Ljava/lang/CharSequence;)Lcom/umeng/update/net/r;

    move-result-object v0

    .line 308
    const/16 v4, 0x64

    invoke-virtual {v0, v4, p4, v8}, Lcom/umeng/update/net/r;->a(IIZ)Lcom/umeng/update/net/r;

    .line 310
    iget-boolean v0, p2, Lcom/umeng/update/net/k;->g:Z

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v2, v3}, Lcom/umeng/update/net/r;->b(Landroid/widget/RemoteViews;)Lcom/umeng/update/util/a;

    .line 312
    invoke-virtual {v2}, Lcom/umeng/update/net/r;->e()V

    .line 315
    const-string v0, "continue"

    .line 314
    invoke-static {p3, v0}, Lcom/umeng/update/net/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v1, v0}, Lcom/umeng/update/net/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 318
    const-string v3, "cancel"

    .line 317
    invoke-static {p3, v3}, Lcom/umeng/update/net/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-static {v1, v3}, Lcom/umeng/update/net/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 319
    const/4 v4, 0x2

    invoke-static {v1, v2, p3, v4}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;Lcom/umeng/update/net/r;II)V

    .line 320
    invoke-virtual {v2, v0, v3}, Lcom/umeng/update/net/r;->a(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/umeng/update/net/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/update/net/r;->c()Lcom/umeng/update/net/r;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v7}, Lcom/umeng/update/net/r;->a(Z)Lcom/umeng/update/util/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/umeng/update/util/a;->b(Z)Lcom/umeng/update/util/a;

    .line 326
    :goto_1
    return-object v2

    .line 260
    :catch_0
    move-exception v0

    .line 261
    sget-object v4, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    const-string v5, "No notification icon background found:"

    invoke-static {v4, v5, v0}, Lu/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 266
    :cond_0
    :try_start_1
    const-string v0, "com.android.internal.R$drawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 268
    const-string v4, "status_bar_notification_icon_bg"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 269
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 270
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 271
    invoke-static {v1}, Landroid/support/design/widget/am;->v(Landroid/content/Context;)I

    move-result v4

    .line 272
    const-string v5, "setBackgroundResource"

    .line 271
    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 276
    :try_start_2
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 278
    const-string v4, "status_bar_edge_ignore"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 279
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 280
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 282
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 283
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    .line 285
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 286
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 287
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 288
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 289
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 290
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 291
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 293
    invoke-static {v1}, Landroid/support/design/widget/am;->v(Landroid/content/Context;)I

    move-result v4

    .line 294
    const-string v5, "setWidth"

    .line 292
    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 295
    :catch_2
    move-exception v0

    .line 296
    sget-object v4, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    const-string v5, "No notification size found:"

    invoke-static {v4, v5, v0}, Lu/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 323
    :cond_1
    invoke-virtual {v2}, Lcom/umeng/update/net/r;->a()Lcom/umeng/update/net/r;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/umeng/update/net/r;->a(Z)Lcom/umeng/update/util/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/umeng/update/util/a;->b(Z)Lcom/umeng/update/util/a;

    goto/16 :goto_1
.end method

.method final a(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 461
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 460
    check-cast v0, Landroid/app/NotificationManager;

    .line 462
    iget-object v1, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/update/net/s;

    .line 463
    if-eqz v1, :cond_3

    .line 464
    sget-object v2, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download service clear cache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    iget-object v4, v4, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v2, v1, Lcom/umeng/update/net/s;->a:Lcom/umeng/update/net/f;

    if-eqz v2, :cond_0

    .line 466
    iget-object v2, v1, Lcom/umeng/update/net/s;->a:Lcom/umeng/update/net/f;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/umeng/update/net/f;->a(I)V

    .line 467
    :cond_0
    iget v2, v1, Lcom/umeng/update/net/s;->c:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 468
    iget-object v0, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    iget-object v2, v1, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    iget-object v2, v1, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    .line 3096
    iget v2, v1, Lcom/umeng/update/net/s;->c:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 3097
    iget v1, v1, Lcom/umeng/update/net/s;->c:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/umeng/update/net/p;->d:Lcom/umeng/update/net/v;

    invoke-virtual {v0, p2}, Lcom/umeng/update/net/v;->b(I)V

    .line 474
    :cond_3
    return-void
.end method

.method final a(Lcom/umeng/update/net/k;JJJ)V
    .locals 4

    .prologue
    .line 478
    iget-object v0, p1, Lcom/umeng/update/net/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 479
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 480
    const-string v0, "dsize"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-static {}, Lu/a/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 484
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 485
    const-string v2, "dtime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const/4 v0, 0x0

    .line 488
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    .line 489
    long-to-float v0, p2

    long-to-float v2, p4

    div-float/2addr v0, v2

    .line 491
    :cond_0
    const/high16 v2, 0x42c80000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 492
    const-string v2, "dpcent"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v0, "ptimes"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/umeng/update/net/k;->f:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/update/net/p;->a(Ljava/util/Map;Z[Ljava/lang/String;)V

    .line 498
    :cond_1
    return-void
.end method

.method final a(Ljava/util/Map;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/update/net/q;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/umeng/update/net/q;-><init>(Lcom/umeng/update/net/p;[Ljava/lang/String;ZLjava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 573
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 574
    return-void
.end method

.method final a(Lcom/umeng/update/net/DownloadingService;Landroid/content/Intent;)Z
    .locals 17

    .prologue
    .line 578
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/umeng/update/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 580
    const-string v3, "com.umeng.broadcast.download.msg"

    .line 579
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 581
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 583
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 584
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 585
    if-eqz v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/umeng/update/net/s;

    move-object/from16 v16, v0

    .line 588
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/umeng/update/net/s;->a:Lcom/umeng/update/net/f;

    .line 590
    const-string v5, "continue"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 591
    if-nez v2, :cond_3

    .line 592
    sget-object v2, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    const-string v3, "Receive action do play click."

    invoke-static {v2, v3}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 597
    invoke-static {v4, v2}, Lu/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 598
    if-eqz v2, :cond_0

    .line 599
    invoke-static {v4}, Lu/a/a;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 602
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 606
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 605
    invoke-static {v3}, Lcom/alipay/sdk/b/b;->d(Landroid/content/Context;)I

    move-result v3

    .line 603
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 607
    const/4 v3, 0x1

    .line 600
    invoke-static {v4, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 608
    const/4 v2, 0x0

    .line 685
    :goto_0
    return v2

    .line 611
    :cond_0
    new-instance v2, Lcom/umeng/update/net/f;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    const/4 v7, 0x0

    .line 613
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/umeng/update/net/DownloadingService;->a:Lcom/umeng/update/net/e;

    move-object/from16 v3, p1

    .line 611
    invoke-direct/range {v2 .. v8}, Lcom/umeng/update/net/f;-><init>(Lcom/umeng/update/net/DownloadingService;Landroid/content/Context;Lcom/umeng/update/net/k;IILcom/umeng/update/net/e;)V

    .line 614
    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/umeng/update/net/s;->a:Lcom/umeng/update/net/f;

    .line 615
    invoke-virtual {v2}, Lcom/umeng/update/net/f;->start()V

    .line 617
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 618
    const/4 v2, 0x2

    iput v2, v3, Landroid/os/Message;->what:I

    .line 619
    const/4 v2, 0x7

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 620
    iput v6, v3, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 629
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 626
    :catch_0
    move-exception v2

    .line 627
    :try_start_2
    sget-object v3, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 682
    :catch_1
    move-exception v2

    .line 683
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 631
    :cond_3
    :try_start_3
    sget-object v3, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    const-string v5, "Receive action do play click."

    invoke-static {v3, v5}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/umeng/update/net/f;->a(I)V

    .line 633
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/umeng/update/net/s;->a:Lcom/umeng/update/net/f;

    .line 3441
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 3443
    const-string v2, "notification"

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3442
    check-cast v2, Landroid/app/NotificationManager;

    .line 3444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/update/net/s;

    .line 3445
    iget-object v5, v3, Lcom/umeng/update/net/s;->b:Lcom/umeng/update/net/r;

    invoke-virtual {v5}, Lcom/umeng/update/net/r;->e()V

    .line 3446
    iget-object v5, v3, Lcom/umeng/update/net/s;->b:Lcom/umeng/update/net/r;

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;Lcom/umeng/update/net/r;II)V

    .line 3447
    iget-object v5, v3, Lcom/umeng/update/net/s;->b:Lcom/umeng/update/net/r;

    .line 3449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 4032
    invoke-static {v4}, Lu/a/c;->a(Landroid/content/Context;)Lu/a/c;

    move-result-object v4

    const-string v9, "umeng_common_pause_notification_prefix"

    invoke-virtual {v4, v9}, Lu/a/c;->d(Ljava/lang/String;)I

    move-result v4

    .line 3450
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3453
    iget-object v4, v3, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    iget-object v4, v4, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3449
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3448
    invoke-virtual {v5, v4}, Lcom/umeng/update/net/r;->b(Ljava/lang/CharSequence;)Lcom/umeng/update/net/r;

    move-result-object v4

    .line 3453
    invoke-virtual {v4}, Lcom/umeng/update/net/r;->b()Lcom/umeng/update/net/r;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/umeng/update/net/r;->a(Z)Lcom/umeng/update/util/a;

    move-result-object v4

    .line 3454
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/umeng/update/util/a;->b(Z)Lcom/umeng/update/util/a;

    .line 3455
    iget-object v3, v3, Lcom/umeng/update/net/s;->b:Lcom/umeng/update/net/r;

    invoke-virtual {v3}, Lcom/umeng/update/net/r;->d()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 636
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 637
    const/4 v2, 0x2

    iput v2, v3, Landroid/os/Message;->what:I

    .line 638
    const/4 v2, 0x6

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 639
    iput v6, v3, Landroid/os/Message;->arg2:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 642
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 648
    :cond_4
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 645
    :catch_2
    move-exception v2

    .line 646
    :try_start_5
    sget-object v3, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 650
    :cond_5
    const-string v5, "cancel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 651
    sget-object v3, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    const-string v5, "Receive action do stop click."

    invoke-static {v3, v5}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 653
    if-eqz v2, :cond_7

    .line 654
    const/4 v3, 0x2

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/umeng/update/net/f;->a(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 664
    :goto_3
    :try_start_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 665
    const/4 v2, 0x5

    iput v2, v3, Landroid/os/Message;->what:I

    .line 666
    const/4 v2, 0x5

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 667
    iput v6, v3, Landroid/os/Message;->arg2:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 670
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 673
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 678
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 656
    :cond_7
    :try_start_9
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    .line 657
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v3, 0x1

    aget-wide v12, v2, v3

    .line 658
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v3, 0x2

    aget-wide v14, v2, v3

    .line 659
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/k;JJJ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v2

    .line 664
    :try_start_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 665
    const/4 v2, 0x5

    iput v2, v3, Landroid/os/Message;->what:I

    .line 666
    const/4 v2, 0x5

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 667
    iput v6, v3, Landroid/os/Message;->arg2:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 670
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 673
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 675
    :catch_4
    move-exception v2

    :try_start_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    goto :goto_4

    .line 662
    :catchall_0
    move-exception v2

    move-object v3, v2

    .line 664
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 665
    const/4 v2, 0x5

    iput v2, v5, Landroid/os/Message;->what:I

    .line 666
    const/4 v2, 0x5

    iput v2, v5, Landroid/os/Message;->arg1:I

    .line 667
    iput v6, v5, Landroid/os/Message;->arg2:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 670
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {v2, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 673
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 677
    :goto_5
    :try_start_e
    throw v3

    .line 675
    :catch_5
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    goto :goto_5

    :catch_6
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_4
.end method

.method final a(Lcom/umeng/update/net/k;ZLandroid/os/Messenger;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 396
    if-eqz p2, :cond_0

    .line 397
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 398
    iget-object v0, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    if-nez v0, :cond_3

    move v0, v1

    .line 421
    :goto_2
    return v0

    .line 399
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/k;

    .line 400
    sget-object v5, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " downling  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 401
    iget-object v0, v0, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {v5, v0}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_2
    sget-object v0, Lcom/umeng/update/net/p;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "downling  null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 421
    goto :goto_2

    .line 409
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/k;

    .line 411
    iget-object v4, p1, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 412
    iget-object v1, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 413
    goto :goto_2

    .line 416
    :cond_6
    iget-object v4, v0, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 417
    iget-object v1, p0, Lcom/umeng/update/net/p;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 418
    goto/16 :goto_2
.end method

.method final b(Lcom/umeng/update/net/k;)I
    .locals 4

    .prologue
    .line 426
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 437
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 428
    iget-object v0, p1, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 429
    iget-object v3, p1, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    iget-object v0, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    iget-object v0, v0, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    iget v0, v0, Lcom/umeng/update/net/s;->c:I

    goto :goto_1

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    iget-object v0, v0, Lcom/umeng/update/net/s;->d:Lcom/umeng/update/net/k;

    iget-object v0, v0, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/umeng/update/net/p;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    iget v0, v0, Lcom/umeng/update/net/s;->c:I

    goto :goto_1

    .line 426
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
