.class public Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/ushaqi/zhuishushenqi/ui/n;

.field private B:I

.field private C:I

.field private D:Lcom/ushaqi/zhuishushenqi/widget/av;

.field private E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

.field private a:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/view/View;

.field private o:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

.field private s:Landroid/widget/SeekBar;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/widget/ImageButton;

.field private y:Landroid/view/View;

.field private z:Lcom/ushaqi/zhuishushenqi/util/as;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j:Z

    .line 65
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k:Z

    .line 66
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->l:Z

    .line 67
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->m:Z

    .line 77
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->z:Lcom/ushaqi/zhuishushenqi/util/as;

    .line 80
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->B:I

    .line 81
    const/16 v0, 0x64

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->C:I

    .line 244
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/j;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/j;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->D:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 540
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/m;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/m;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;I)I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 376
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->C:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->C:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->B:I

    .line 377
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->B:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->C:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->z:Lcom/ushaqi/zhuishushenqi/util/as;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->B:I

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->B:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/util/as;->a(Ljava/util/List;I)V

    .line 379
    return-void

    .line 377
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->B:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->C:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 298
    .line 1302
    div-int/lit8 v0, p2, 0x3c

    .line 1303
    rem-int/lit8 v1, p2, 0x3c

    .line 1304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v1, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-void

    .line 1304
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 276
    :goto_1
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/util/as;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->z:Lcom/ushaqi/zhuishushenqi/util/as;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f()V

    .line 188
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->finish()V

    .line 190
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;I)V
    .locals 4

    .prologue
    .line 50
    .line 2510
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->updateTrack(Ljava/lang/String;I)V

    .line 2511
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/F;

    iget-wide v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c:J

    invoke-direct {v1, v2, v3, p1}, Lcom/ushaqi/zhuishushenqi/event/F;-><init>(JI)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k:Z

    return p1
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j:Z

    return p1
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i:I

    .line 281
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->u:Landroid/widget/TextView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i:I

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Landroid/widget/TextView;I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->t:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Landroid/widget/TextView;I)V

    .line 285
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    if-nez v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 290
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 291
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 295
    :cond_2
    :goto_1
    return-void

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    if-le v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    if-le v0, v1, :cond_2

    .line 293
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->m:Z

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->m:Z

    .line 312
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 313
    const-string v0, "album_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "sort"

    const-string v2, "asc"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->C:I

    invoke-virtual {v0, v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setDefaultPagesize(I)V
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/k;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/k;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getTracks(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->printStackTrace()V

    goto :goto_1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 390
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->B:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->C:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 391
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(I)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->g()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 2

    .prologue
    .line 50
    .line 2253
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g:I

    if-ge v0, v1, :cond_0

    .line 2254
    const-string v0, "\u6b63\u5728\u83b7\u53d6\u66f4\u591a\u7ae0\u8282"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2256
    :cond_0
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->m:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g:I

    if-ge v0, v1, :cond_1

    .line 2257
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    .line 2258
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g()V

    :goto_0
    return-void

    .line 2260
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->l:Z

    goto :goto_0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->A:Lcom/ushaqi/zhuishushenqi/ui/n;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->A:Lcom/ushaqi/zhuishushenqi/ui/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/n;->notifyDataSetChanged()V

    .line 524
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 527
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/l;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/l;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i()V

    return-void
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    return v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f()V

    return-void
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    return v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g()V

    return-void
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->l:Z

    return v0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j()V

    return-void
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    return v0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    return v0
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    return-object v0
.end method

.method static synthetic t(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->w:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic u(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k:Z

    return v0
.end method

.method static synthetic v(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->s:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic x(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    return v0
.end method

.method static synthetic y(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    .line 362
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getTotalCount()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g:I

    .line 363
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->o:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getCoverUrlMiddle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setImageUrl(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 366
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/n;

    invoke-direct {v0, p0, p0}, Lcom/ushaqi/zhuishushenqi/ui/n;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->A:Lcom/ushaqi/zhuishushenqi/ui/n;

    .line 367
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->A:Lcom/ushaqi/zhuishushenqi/ui/n;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    if-le v0, v1, :cond_0

    .line 369
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Z)V

    .line 370
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 373
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b()V

    .line 195
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    return-void

    .line 405
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    if-nez v0, :cond_0

    .line 406
    const-string v0, "\u5df2\u7ecf\u662f\u7b2c\u4e00\u9996"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Z)V

    .line 409
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    .line 410
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 411
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f()V

    .line 1382
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->B:I

    if-ge v0, v1, :cond_1

    .line 1383
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(I)V

    goto :goto_0

    .line 1385
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->f()V

    goto :goto_0

    .line 416
    :pswitch_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->h()V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->z:Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->d()V

    goto :goto_0

    .line 423
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 424
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9996"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_3
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Z)V

    .line 427
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    .line 428
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 429
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f()V

    .line 430
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->h()V

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c01b9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->setContentView(I)V

    .line 87
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 88
    const-string v0, ""

    const v1, 0x7f050104

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/f;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/f;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 98
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->b()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->a(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ALBUM_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ALBUM_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c:J

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INDEX_OF_PLAYLIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INDEX_OF_PLAYLIST"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->C:I

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setDefaultPagesize(I)V
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_1
    :goto_0
    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->D:Lcom/ushaqi/zhuishushenqi/widget/av;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 117
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030070

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 121
    const v0, 0x7f0c00e4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->y:Landroid/view/View;

    .line 123
    const v0, 0x7f0c00df

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->n:Landroid/view/View;

    .line 124
    const v0, 0x7f0c00e0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->o:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    .line 125
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->p:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0c00e2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->q:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0c01b5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->s:Landroid/widget/SeekBar;

    .line 128
    const v0, 0x7f0c01b7

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->t:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0c01b8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->u:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0c01b9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->v:Landroid/widget/ImageButton;

    .line 131
    const v0, 0x7f0c01ba

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->w:Landroid/widget/ImageButton;

    .line 132
    const v0, 0x7f0c01bb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->x:Landroid/widget/ImageButton;

    .line 133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->v:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0c01b6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/g;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/g;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/h;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/h;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->a(Z)V

    .line 150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->s:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->s:Landroid/widget/SeekBar;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/i;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/i;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 173
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->w:Landroid/widget/ImageButton;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 179
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    .line 180
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->printStackTrace()V

    goto/16 :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->w:Landroid/widget/ImageButton;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->b(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 233
    :cond_0
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 234
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 200
    :pswitch_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b()V

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onPause()V

    .line 223
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->l:Z

    .line 224
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->m:Z

    .line 225
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onResume()V

    .line 210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    if-gt v0, v1, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->m:Z

    .line 212
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->f:I

    .line 213
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->g()V

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->i()V

    .line 216
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->j()V

    goto :goto_0
.end method

.method public onUpdateAlbum(Lcom/ushaqi/zhuishushenqi/event/F;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/F;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c:J

    .line 240
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/F;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->e:I

    .line 241
    return-void
.end method
