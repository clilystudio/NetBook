.class public abstract Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/adapter/u",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/NotificationItem;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ushaqi/zhuishushenqi/adapter/w;

.field private f:Lcom/ushaqi/zhuishushenqi/adapter/w;

.field private g:Lcom/ushaqi/zhuishushenqi/adapter/w;

.field private h:Lcom/ushaqi/zhuishushenqi/adapter/w;

.field private i:[Lcom/ushaqi/zhuishushenqi/adapter/w;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/adapter/u;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d:Ljava/util/List;

    .line 33
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/w;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/adapter/w;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->e:Lcom/ushaqi/zhuishushenqi/adapter/w;

    .line 34
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/w;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/adapter/w;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->f:Lcom/ushaqi/zhuishushenqi/adapter/w;

    .line 35
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/w;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/adapter/w;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->g:Lcom/ushaqi/zhuishushenqi/adapter/w;

    .line 36
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/w;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/adapter/w;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->h:Lcom/ushaqi/zhuishushenqi/adapter/w;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/adapter/w;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->e:Lcom/ushaqi/zhuishushenqi/adapter/w;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->f:Lcom/ushaqi/zhuishushenqi/adapter/w;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->g:Lcom/ushaqi/zhuishushenqi/adapter/w;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->h:Lcom/ushaqi/zhuishushenqi/adapter/w;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i:[Lcom/ushaqi/zhuishushenqi/adapter/w;

    .line 90
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->b:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->R(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a:J

    .line 92
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 200
    if-nez p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 203
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$HeaderHolder;

    invoke-direct {v0, p2}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$HeaderHolder;-><init>(Landroid/view/View;)V

    .line 204
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$HeaderHolder;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-object p2
.end method

.method private a(II)Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 187
    if-ne p1, v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unread item is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    .line 196
    :goto_0
    return-object v0

    .line 192
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d:Ljava/util/List;

    sub-int v0, p2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 196
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->getItemViewType(I)I

    move-result v0

    .line 236
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 237
    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(II)Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/NotificationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    .line 1115
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getServerDate()Ljava/util/Date;

    move-result-object v3

    .line 1116
    iget-wide v4, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a:J

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1117
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1119
    :cond_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->e:Lcom/ushaqi/zhuishushenqi/adapter/w;

    invoke-virtual {v0, v1, v1}, Lcom/ushaqi/zhuishushenqi/adapter/w;->a(II)V

    .line 1126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->f:Lcom/ushaqi/zhuishushenqi/adapter/w;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/w;->a(II)V

    .line 1127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x0

    .line 1130
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1131
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->g:Lcom/ushaqi/zhuishushenqi/adapter/w;

    invoke-virtual {v1, v0, v0}, Lcom/ushaqi/zhuishushenqi/adapter/w;->a(II)V

    .line 1132
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->h:Lcom/ushaqi/zhuishushenqi/adapter/w;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/w;->a(II)V

    .line 1135
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->notifyDataSetChanged()V

    .line 110
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 98
    .line 99
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i:[Lcom/ushaqi/zhuishushenqi/adapter/w;

    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 1081
    iget v5, v0, Lcom/ushaqi/zhuishushenqi/adapter/w;->b:I

    iget v6, v0, Lcom/ushaqi/zhuishushenqi/adapter/w;->a:I

    if-ne v5, v6, :cond_0

    iget v5, v0, Lcom/ushaqi/zhuishushenqi/adapter/w;->b:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1082
    const/4 v0, 0x1

    .line 100
    :goto_1
    add-int/2addr v2, v0

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1084
    :cond_0
    iget v5, v0, Lcom/ushaqi/zhuishushenqi/adapter/w;->b:I

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/adapter/w;->a:I

    sub-int v0, v5, v0

    goto :goto_1

    .line 102
    :cond_1
    return v2
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(I)Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i:[Lcom/ushaqi/zhuishushenqi/adapter/w;

    array-length v4, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_4

    .line 141
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i:[Lcom/ushaqi/zhuishushenqi/adapter/w;

    aget-object v2, v2, v0

    .line 2073
    iget v5, v2, Lcom/ushaqi/zhuishushenqi/adapter/w;->a:I

    iget v6, v2, Lcom/ushaqi/zhuishushenqi/adapter/w;->b:I

    if-ne v5, v6, :cond_1

    .line 2074
    iget v2, v2, Lcom/ushaqi/zhuishushenqi/adapter/w;->a:I

    if-ne p1, v2, :cond_0

    move v2, v3

    .line 142
    :goto_1
    if-eqz v2, :cond_3

    .line 147
    :goto_2
    return v0

    :cond_0
    move v2, v1

    .line 2074
    goto :goto_1

    .line 2077
    :cond_1
    iget v5, v2, Lcom/ushaqi/zhuishushenqi/adapter/w;->a:I

    if-lt p1, v5, :cond_2

    iget v2, v2, Lcom/ushaqi/zhuishushenqi/adapter/w;->b:I

    if-ge p1, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 147
    goto :goto_2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->getItemViewType(I)I

    move-result v1

    .line 160
    packed-switch v1, :pswitch_data_0

    move-object v1, p2

    .line 170
    :goto_0
    return-object v1

    .line 162
    :pswitch_0
    const-string v0, "\u672a\u8bfb"

    invoke-direct {p0, p3, p2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 164
    :pswitch_1
    const-string v0, "\u5df2\u8bfb"

    invoke-direct {p0, p3, p2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-direct {p0, v1, p1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(II)Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v2

    .line 2174
    if-ne v1, v0, :cond_2

    .line 2175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unread item is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_1

    .line 2209
    :cond_1
    :goto_1
    if-nez p2, :cond_5

    .line 2210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fc

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2212
    :goto_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2214
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinderFactory;->create(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;

    move-result-object v3

    .line 2215
    iget-object v4, v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->getMainText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2217
    const-string v4, "follow"

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2218
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2224
    :goto_3
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mAvatar:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->fillImageView(Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;)V

    move-object v0, v1

    .line 2228
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->setDividerMatchParent()V

    goto :goto_0

    .line 2179
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 2180
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 2181
    :goto_4
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, p1, v0

    if-ne v1, v0, :cond_1

    goto :goto_1

    .line 2180
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 2220
    :cond_4
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2221
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->getSubText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2222
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;->fillIcon(Landroid/widget/TextView;)V

    goto :goto_3

    :cond_5
    move-object v1, p2

    goto :goto_2

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i:[Lcom/ushaqi/zhuishushenqi/adapter/w;

    array-length v0, v0

    return v0
.end method
