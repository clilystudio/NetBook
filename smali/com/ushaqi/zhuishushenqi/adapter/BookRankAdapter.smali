.class public final Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"
# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/adapter/u",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
        ">;"
    }
.end annotation
# instance fields
.field private a:Landroid/view/LayoutInflater;
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field
.field private f:I
.field private g:I
# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0
    .prologue
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a = p1;
    return;
.end method
.method private a(I)Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;
    .locals 3
    .prologue
    v0 = p0.b(p1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p1 + -0x1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b;
    v1 = v1.size();
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b;
    v1 = p1 + -0x1;
    v0 = v0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;
    :goto_0
    return v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f;
    v0 = p1 - v0;
    v1 = v0 + -0x1;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d;
    v2 = v2.size();
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_1
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d;
    v0 = v0 + -0x1;
    v0 = v1.get(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;
    goto :goto_0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;I)Z
    .locals 1
    .prologue
    v0 = p0.b(p1);
    return v0
.end method
.method private b(I)Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f;
    if (p1 >= v0) {
//       if-ge p1, v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;)V
    .locals 4
    .prologue
    v1 = 0x1;
    v2 = 0x0;
    v0 = p1.getMale();
    v0 = v0.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = v1;
    :goto_0
    v3 = p1.getMainMaleList();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b = v3;
    v3 = p1.getSubMaleList();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->c = v3;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b;
    v0 = v0.size();
    v3 = v0 + 0x1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->c;
    v0 = v0.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_1
    }
    v0 = v1;
    :goto_1
    v0 += v3;
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f = v0;
    :goto_2
    v0 = p1.getFemale();
    v0 = v0.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_3
    }
    v0 = v1;
    :goto_3
    v3 = p1.getMainFemaleList();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d = v3;
    v3 = p1.getSubFemaleList();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->e = v3;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d;
    v0 = v0.size();
    v0 = v0 + 0x1;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->e;
    v3 = v3.size();
    if (v3 <= 0) {
//       if-lez v3, :cond_4
    }
    :goto_4
    v0 += v1;
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->g = v0;
    :goto_5
    p0.notifyDataSetInvalidated();
    return;
    :cond_0
    v0 = v2;
    goto :goto_0
    :cond_1
    v0 = v2;
    goto :goto_1
    :cond_2
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f = v2;
    goto :goto_2
    :cond_3
    v0 = v2;
    goto :goto_3
    :cond_4
    v1 = v2;
    goto :goto_4
    :cond_5
    p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->g = v2;
    goto :goto_5
.end method
.method public final getCount()I
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->g;
    v0 += v1;
    return v0
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .prologue
    v0 = p0.a(p1);
    return v0;
.end method
.method public final getItemViewType(I)I
    .locals 4
    .prologue
    v2 = 0x2;
    v1 = 0x1;
    v0 = 0x0;
    v3 = p0.b(p1);
    if (v3 == 0) {
//       if-eqz v3, :cond_3
    }
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b;
    v0 = v0.size();
    v0 = v0 + 0x1;
    if (p1 >= v0) {
//       if-ge p1, v0, :cond_2
    }
    v0 = v1;
    goto :goto_0
    :cond_2
    v0 = v2;
    goto :goto_0
    :cond_3
    v3 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f;
    v3 = p1 - v3;
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d;
    v0 = v0.size();
    v0 = v0 + 0x1;
    if (v3 >= v0) {
//       if-ge v3, v0, :cond_4
    }
    v0 = v1;
    goto :goto_0
    :cond_4
    v0 = v2;
    goto :goto_0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .prologue
    v2 = 0x0;
    v3 = p0.getItemViewType(p1);
    if (p2 != 0) {
//       if-nez p2, :cond_0
    }
    packed-switch v3, :pswitch_data_0
    :cond_0
    v1 = p2;
    :goto_0
    packed-switch v3, :pswitch_data_1
    :goto_1
    return v1;
    :pswitch_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a;
    v1 = 0x7f0300e4;
    v1 = v0.inflate(v1, p3, v2);
    v0 = v1;
    check-cast v0, Landroid/widget/TextView;
    v2 = p0.b(p1);
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v2 = "\u7537\u751f";
    :goto_2
    v0.setText(v2);
    goto :goto_0
    :cond_1
    v2 = "\u5973\u751f";
    goto :goto_2
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a;
    v1 = 0x7f0300e3;
    v1 = v0.inflate(v1, p3, v2);
    v0 = new BookRankAdapter$ViewHolder();
    v0.<init>(v1);
    v1.setTag(v0);
    goto :goto_0
    :pswitch_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a;
    v1 = 0x7f0300d6;
    v1 = v0.inflate(v1, p3, v2);
    goto :goto_0
    :pswitch_3
    v2 = p0.a(p1);
    v0 = v1.getTag();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter$ViewHolder;
    v3 = v0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter$ViewHolder;->cover;
    v4 = v2.getFullCover();
    v5 = 0x7f020106;
    v3.setImageUrl(v4, v5);
    v0 = v0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter$ViewHolder;->title;
    v3 = v2.getTitle();
    v0.setText(v3);
    v0 = new f();
    v0.<init>(p0, v2, p1);
    v1.setOnClickListener(v0);
    goto :goto_1
    :pswitch_4
    v0 = v1;
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;
    v2 = p0.b(p1);
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->c;
    v3 = p0.b(p1);
    v0.a(v2, p1, v3);
    goto :goto_1
    :cond_2
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->e;
    v3 = p0.b(p1);
    v0.a(v2, p1, v3);
    goto :goto_1
    nop
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
.method public final getViewTypeCount()I
    .locals 1
    .prologue
    v0 = 0x3;
    return v0
.end method
