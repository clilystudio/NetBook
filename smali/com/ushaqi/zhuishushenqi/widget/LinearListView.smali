.class public Lcom/ushaqi/zhuishushenqi/widget/LinearListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Integer;

.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/Integer;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/ushaqi/zhuishushenqi/widget/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a:Ljava/lang/Integer;

    .line 25
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->b:Ljava/lang/Integer;

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->g:I

    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->d:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 94
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/ac;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/ac;-><init>(Lcom/ushaqi/zhuishushenqi/widget/LinearListView;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0c02f6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v0, 0x7f0c02f7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/LinearListView;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 22
    .line 1129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 1131
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->g:I

    if-ne v1, p1, :cond_5

    .line 1132
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getExtra()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1133
    if-eqz v1, :cond_0

    sget-object v3, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->c:Ljava/lang/Integer;

    if-ne v3, v1, :cond_2

    :cond_0
    move v1, v2

    .line 1140
    :goto_0
    if-eqz v1, :cond_4

    .line 1141
    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    move v0, v1

    .line 1158
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->b(IZ)V

    .line 1161
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->h:Lcom/ushaqi/zhuishushenqi/widget/ad;

    if-eqz v1, :cond_1

    .line 1162
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->h:Lcom/ushaqi/zhuishushenqi/widget/ad;

    invoke-interface {v1, p1, v0}, Lcom/ushaqi/zhuishushenqi/widget/ad;->a(IZ)V

    .line 22
    :cond_1
    return-void

    .line 1135
    :cond_2
    sget-object v3, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a:Ljava/lang/Integer;

    if-ne v3, v1, :cond_3

    .line 1136
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1138
    goto :goto_0

    .line 1143
    :cond_4
    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    move v0, v1

    .line 1145
    goto :goto_1

    .line 1149
    :cond_5
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->g:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    .line 1150
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0c02f8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020055

    .line 1151
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1154
    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    .line 1155
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->g:I

    move v0, v2

    goto :goto_1
.end method

.method private b(IZ)V
    .locals 3

    .prologue
    .line 168
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    const v2, 0x7f0c02f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 172
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 183
    :goto_1
    return-void

    .line 174
    :catch_0
    move-exception v2

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    return-object v0
.end method

.method public final a(IZ)V
    .locals 3

    .prologue
    .line 111
    if-eqz p2, :cond_0

    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->b(IZ)V

    .line 114
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->b:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->removeAllViews()V

    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 78
    const/4 v1, 0x1

    :goto_0
    if-gt v1, v2, :cond_1

    .line 82
    if-eqz p1, :cond_0

    move v0, v1

    .line 87
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(II)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    sub-int v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    return-void
.end method

.method public setCurrentPlayIndex(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->g:I

    .line 204
    return-void
.end method

.method public setItemHeight(I)V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    return-void
.end method

.method public setPlayButtonDefault(I)V
    .locals 2

    .prologue
    .line 117
    if-lez p1, :cond_0

    .line 118
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c02f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setPlayTrackInterface(Lcom/ushaqi/zhuishushenqi/widget/ad;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->h:Lcom/ushaqi/zhuishushenqi/widget/ad;

    .line 192
    return-void
.end method

.method public setShowData(Ljava/util/List;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tracks must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->removeAllViews()V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    :goto_0
    if-gt v1, v2, :cond_3

    .line 63
    if-eqz p2, :cond_2

    move v0, v1

    .line 68
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/LinearListView;->a(II)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_2
    sub-int v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_3
    return-void
.end method
