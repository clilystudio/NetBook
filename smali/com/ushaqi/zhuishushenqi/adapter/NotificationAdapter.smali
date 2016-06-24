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
    p0.<init>();
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c = v0;
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d = v0;
    v0 = new w();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->e = v0;
    v0 = new w();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->f = v0;
    v0 = new w();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->g = v0;
    v0 = new w();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->h = v0;
    v0 = 0x4;
    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/adapter/w;
    v1 = 0x0;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->e;
    v0[v1] = v2;
    v1 = 0x1;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->f;
    v0[v1] = v2;
    v1 = 0x2;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->g;
    v0[v1] = v2;
    v1 = 0x3;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->h;
    v0[v1] = v2;
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i = v0;
    v0 = p1.getContext();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->b = v0;
    v0 = p0.a();
    v0 = Lcom/arcsoft/hpay100/a/a.R(v0);
    p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a = v0;
    return;
.end method
.method private a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .prologue
    if (p2 != 0) {
//       if-nez p2, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->b;
    v0 = Landroid/view/LayoutInflater.from(v0);
    v1 = 0x7f0300fb;
    v2 = 0x0;
    p2 = v0.inflate(v1, p1, v2);
    :cond_0
    v0 = new NotificationAdapter$HeaderHolder();
    v0.<init>(p2);
    v0 = v0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$HeaderHolder;->mLabelText;
    v0.setText(p3);
    return p2;
.end method
.method private a(II)Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    .locals 2
    .prologue
    v0 = 0x1;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v0 = v0.size();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new RuntimeException();
    v1 = "unread item is 0";
    v0.<init>(v1);
    throw v0
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v1 = p2 + -0x1;
    v0 = v0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    :goto_0
    return v0;
    :cond_1
    v1 = 0x3;
    if (p1 != v1) {
//       if-ne p1, v1, :cond_3
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v1 = v1.size();
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    :goto_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d;
    v0 = p2 - v0;
    v0 = v1.get(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    goto :goto_0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v0 = v0.size();
    v0 = v0 + 0x2;
    goto :goto_1
    :cond_3
    v0 = 0x0;
    goto :goto_0
.end method
# virtual methods
.method public final a(I)Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    .locals 2
    .prologue
    v0 = p0.getItemViewType(p1);
    v1 = 0x2;
    if (v0 == v1) {
//       if-eq v0, v1, :cond_0
    }
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    v0 = 0x0;
    :goto_0
    return v0;
    :cond_1
    v0 = p0.a(v0, p1);
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
    v1 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d;
    v0.clear();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v0.clear();
    v2 = p1.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;
    v3 = v0.getServerDate();
    v4 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a;
    v6 = v3.getTime();
    cmp-long v3, v4, v6
    if (v3 >= 0) {
//       if-gez v3, :cond_0
    }
    v3 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v3.add(v0);
    goto :goto_0
    :cond_0
    v3 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d;
    v3.add(v0);
    goto :goto_0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v0 = v0.size();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->e;
    v0.a(v1, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->f;
    v1 = 0x1;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v2 = v2.size();
    v2 = v2 + 0x1;
    v0.a(v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v0 = v0.size();
    v0 = v0 + 0x1;
    v0 = v0 + 0x0;
    :goto_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d;
    v1 = v1.size();
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->g;
    v1.a(v0, v0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->h;
    v2 = v0 + 0x1;
    v0 = v0 + 0x1;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d;
    v3 = v3.size();
    v0 += v3;
    v1.a(v2, v0);
    :cond_2
    p0.notifyDataSetChanged();
    return;
    :cond_3
    v0 = v1;
    goto :goto_1
.end method
.method public final b()Landroid/content/Context;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->b;
    return v0;
.end method
.method public getCount()I
    .locals 7
    .prologue
    v0 = 0x0;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i;
    v4 = v3.length;
    v1 = v0;
    v2 = v0;
    :goto_0
    if (v1 >= v4) {
//       if-ge v1, v4, :cond_1
    }
    v0 = v3[v1];
    v5 = v0.Lcom/ushaqi/zhuishushenqi/adapter/w;->b;
    v6 = v0.Lcom/ushaqi/zhuishushenqi/adapter/w;->a;
    if (v5 != v6) {
//       if-ne v5, v6, :cond_0
    }
    v5 = v0.Lcom/ushaqi/zhuishushenqi/adapter/w;->b;
    v6 = -0x1;
    if (v5 == v6) {
//       if-eq v5, v6, :cond_0
    }
    v0 = 0x1;
    :goto_1
    v2 += v0;
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
    :cond_0
    v5 = v0.Lcom/ushaqi/zhuishushenqi/adapter/w;->b;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/adapter/w;->a;
    v0 = v5 - v0;
    goto :goto_1
    :cond_1
    return v2
.end method
.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .prologue
    v0 = p0.a(p1);
    return v0;
.end method
.method public getItemViewType(I)I
    .locals 7
    .prologue
    v3 = 0x1;
    v1 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i;
    v4 = v0.length;
    v0 = v1;
    :goto_0
    if (v0 >= v4) {
//       if-ge v0, v4, :cond_4
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i;
    v2 = v2[v0];
    v5 = v2.Lcom/ushaqi/zhuishushenqi/adapter/w;->a;
    v6 = v2.Lcom/ushaqi/zhuishushenqi/adapter/w;->b;
    if (v5 != v6) {
//       if-ne v5, v6, :cond_1
    }
    v2 = v2.Lcom/ushaqi/zhuishushenqi/adapter/w;->a;
    if (p1 != v2) {
//       if-ne p1, v2, :cond_0
    }
    v2 = v3;
    :goto_1
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    :goto_2
    return v0
    :cond_0
    v2 = v1;
    goto :goto_1
    :cond_1
    v5 = v2.Lcom/ushaqi/zhuishushenqi/adapter/w;->a;
    if (p1 < v5) {
//       if-lt p1, v5, :cond_2
    }
    v2 = v2.Lcom/ushaqi/zhuishushenqi/adapter/w;->b;
    if (p1 >= v2) {
//       if-ge p1, v2, :cond_2
    }
    v2 = v3;
    goto :goto_1
    :cond_2
    v2 = v1;
    goto :goto_1
    :cond_3
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_4
    v0 = v1;
    goto :goto_2
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .prologue
    v0 = 0x1;
    v6 = 0x0;
    v1 = p0.getItemViewType(p1);
    packed-switch v1, :pswitch_data_0
    v1 = p2;
    :goto_0
    return v1;
    :pswitch_0
    v0 = "\u672a\u8bfb";
    v1 = p0.a(p3, p2, v0);
    goto :goto_0
    :pswitch_1
    v0 = "\u5df2\u8bfb";
    v1 = p0.a(p3, p2, v0);
    goto :goto_0
    :pswitch_2
    v2 = p0.a(v1, p1);
    if (v1 != v0) {
//       if-ne v1, v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v0 = v0.size();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new RuntimeException();
    v1 = "unread item is 0";
    v0.<init>(v1);
    throw v0
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v0 = v0.size();
    v0 = v0 + -0x1;
    v1 = p1 + -0x1;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_1
    }
    :cond_1
    :goto_1
    if (p2 != 0) {
//       if-nez p2, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->b;
    v0 = Landroid/view/LayoutInflater.from(v0);
    v1 = 0x7f0300fc;
    v1 = v0.inflate(v1, p3, v6);
    :goto_2
    v0 = new NotificationAdapter$ViewHolder();
    v0.<init>(v1);
    v3 = Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinderFactory.create(v2);
    v4 = v0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mMainText;
    v5 = v3.getMainText();
    v4.setText(v5);
    v4 = "follow";
    v2 = v2.getType();
    v2 = v4.equals(v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    v2 = v0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mSubText;
    v4 = 0x4;
    v2.setVisibility(v4);
    :goto_3
    v0 = v0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mAvatar;
    v3.fillImageView(v0);
    v0 = v1;
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;
    v0.setDividerMatchParent();
    goto :goto_0
    :cond_2
    v3 = 0x3;
    if (v1 != v3) {
//       if-ne v1, v3, :cond_1
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v1 = v1.size();
    if (v1 != 0) {
//       if-nez v1, :cond_3
    }
    :goto_4
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->d;
    v1 = v1.size();
    v1 = v1 + -0x1;
    v0 = p1 - v0;
    if (v1 != v0) {
//       if-ne v1, v0, :cond_1
    }
    goto :goto_1
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->c;
    v0 = v0.size();
    v0 = v0 + 0x2;
    goto :goto_4
    :cond_4
    v2 = v0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mSubText;
    v2.setVisibility(v6);
    v2 = v0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mSubText;
    v4 = v3.getSubText();
    v2.setText(v4);
    v2 = v0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;->mSubText;
    v3.fillIcon(v2);
    goto :goto_3
    :cond_5
    v1 = p2;
    goto :goto_2
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
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->i;
    v0 = v0.length;
    return v0
.end method
