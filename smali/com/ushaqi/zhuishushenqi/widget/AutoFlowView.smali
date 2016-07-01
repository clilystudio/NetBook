.class public Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
# interfaces
.implements Landroid/view/View$OnClickListener;
# static fields
.field private static final a:Ljava/lang/String;
.field private static b:I
.field private static c:I
.field private static d:I
.field private static e:I
.field private static f:I
.field private static g:I
.field private static h:Lcom/ushaqi/zhuishushenqi/widget/i;
.field private static i:I
# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;",
            ">;"
        }
    .end annotation
.end field
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field
.field private l:[I
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;;
    v0 = v0.getSimpleName();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a:Ljava/lang/String;
    return;
.end method
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .prologue
    p0.<init>(p1);
    p0.b();
    return;
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .prologue
    p0.<init>(p1, p2);
    p0.b();
    return;
.end method
.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/widget/h;",
            ">;I)V"
        }
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v0 = v0.size();
    v1 = p2 << 0x2;
    if (v0 <= v1) {
//       if-le v0, v1, :cond_0
    }
    v0 = new h();
    v0.<init>(p0);
    v1 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e;
    v0.a(v1);
    v1 = v0.Lcom/ushaqi/zhuishushenqi/widget/h;->a;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v3 = p2 << 0x2;
    v4 = p2 << 0x2;
    v4 = v4 + 0x4;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v5 = v5.size();
    v4 = Ljava/lang/Math.min(v4, v5);
    v2 = v2.subList(v3, v4);
    v1.addAll(v2);
    v1 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e;
    v0.a(v1);
    p1.add(v0);
    :cond_0
    return;
.end method
.method private b()V
    .locals 5
    .prologue
    v4 = 0x7;
    v3 = 0x0;
    v2 = 0x41400000    # 12.0f;
    p0.setOrientation(v3);
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j = v0;
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->k = v0;
    v0 = p0.getContext();
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v2);
    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->g:I
    v0 = p0.getContext();
    v1 = 0x40c00000    # 6.0f;
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v1);
    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->b:I
    v0 = p0.getContext();
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v2);
    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c:I
    v0 = p0.getContext();
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v2);
    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->d:I
    v0 = p0.getContext();
    v1 = 0x41800000    # 16.0f;
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v1);
    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e:I
    v0 = p0.getContext();
    v1 = 0x40800000    # 4.0f;
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v1);
    sput v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->f:I
    v0 = p0.getContext();
    v1 = "customer_night_theme";
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v1, v3);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    new-array v0, v4, [I
    fill-array-data v0, :array_0
    p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->l = v0;
    :goto_0
    return;
    :cond_0
    new-array v0, v4, [I
    fill-array-data v0, :array_1
    p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->l = v0;
    goto :goto_0
    nop
    :array_0
    .array-data 4
        0x7f020077
        0x7f020079
        0x7f02007b
        0x7f02007d
        0x7f02007f
        0x7f020081
        0x7f020083
    .end array-data
    :array_1
    .array-data 4
        0x7f020076
        0x7f020078
        0x7f02007a
        0x7f02007c
        0x7f02007e
        0x7f020080
        0x7f020082
    .end array-data
.end method
# virtual methods
.method public final a()V
    .locals 13
    .prologue
    v3 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v1 = new g();
    v1.<init>(p0);
    Ljava/util/Collections.sort(v0, v1);
    p0.removeAllViews();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->k;
    v0.clear();
    v0 = p0.getContext();
    v8 = Landroid/view/LayoutInflater.from(v0);
    v9 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v6 = new ArrayList();
    v6.<init>();
    v10 = p0.getMeasuredWidth();
    if (v10 != 0) {
//       if-nez v10, :cond_0
    }
    v0 = new ArrayList();
    v0.<init>();
    p0.a(v0, v3);
    v1 = 0x1;
    p0.a(v0, v1);
    v1 = 0x2;
    p0.a(v0, v1);
    v4 = v0;
    :goto_0
    v7 = v3;
    v1 = v3;
    :goto_1
    v0 = v4.size();
    if (v7 >= v0) {
//       if-ge v7, v0, :cond_4
    }
    v0 = v4.get(v7);
    v2 = v0;
    check-cast v2, Lcom/ushaqi/zhuishushenqi/widget/h;
    v5 = v3;
    v6 = v1;
    :goto_2
    v0 = v2.Lcom/ushaqi/zhuishushenqi/widget/h;->a;
    v0 = v0.size();
    if (v5 >= v0) {
//       if-ge v5, v0, :cond_3
    }
    v0 = v2.Lcom/ushaqi/zhuishushenqi/widget/h;->a;
    v0 = v0.get(v5);
    v1 = v0;
    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;
    v0 = 0x7f030072;
    v9 = 0x0;
    v0 = v8.inflate(v0, v9, v3);
    check-cast v0, Landroid/widget/TextView;
    v9 = 0x41400000    # 12.0f;
    v0.setTextSize(v9);
    v9 = 0x7f020154;
    v0.setBackgroundResource(v9);
    v9 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c;
    v10 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->b;
    v11 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c;
    v12 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->b;
    v0.setPadding(v9, v10, v11, v12);
    v9 = v1.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content;
    v0.setText(v9);
    v0.setOnClickListener(p0);
    v9 = v1.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->leftMargin;
    v9 = Ljava/lang/Integer.valueOf(v9);
    v0.setTag(v9);
    v9 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->l;
    v10 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->l;
    v10 = v10.length;
    v10 = v6 % v10;
    v9 = v9[v10];
    v0.setBackgroundResource(v9);
    v9 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->k;
    v9.add(v0);
    p0.addView(v0);
    v0 = v1.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show;
    v0 = v0 + 0x1;
    v1.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show = v0;
    v1 = v6 + 0x1;
    v0 = v5 + 0x1;
    v5 = v0;
    v6 = v1;
    goto :goto_2
    :cond_0
    v0 = new h();
    v0.<init>(p0);
    v1 = v3;
    v2 = v0;
    v4 = v3;
    v5 = v3;
    :goto_3
    v0 = v9.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_2
    }
    v0 = v9.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;
    v7 = v0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content;
    v7 = v7.length();
    v11 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->g;
    v7 *= v11;
    v11 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c;
    v11 = v11 << 0x1;
    v7 += v11;
    v11 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e;
    v7 += v11;
    v4 += v7;
    v11 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->f;
    v11 = v10 - v11;
    if (v4 < v11) {
//       if-lt v4, v11, :cond_1
    }
    v5 = v5 + 0x1;
    v4 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->e;
    v2.a(v4);
    v6.add(v2);
    v2 = new h();
    v2.<init>(p0);
    v4 = v7;
    :cond_1
    v7 = 0x3;
    if (v5 == v7) {
//       if-eq v5, v7, :cond_2
    }
    v7 = v2.Lcom/ushaqi/zhuishushenqi/widget/h;->a;
    v7.add(v0);
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_3
    :cond_2
    v4 = v6;
    goto/16 :goto_0
    :cond_3
    v0 = v7 + 0x1;
    v7 = v0;
    v1 = v6;
    goto/16 :goto_1
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v1 = Lcom/ushaqi/zhuishushenqi/c;->e;
    v2 = "search_hotword.txt";
    Lcom/arcsoft/hpay100/a/a.a(v0, v1, v2);
    return;
.end method
.method public onClick(Landroid/view/View;)V
    .locals 2
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->h;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->h;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->k;
    v1.indexOf(p1);
    check-cast p1, Landroid/widget/TextView;
    v1 = p1.getText();
    v1 = v1.toString();
    v0.a(v1);
    :cond_0
    return;
.end method
.method protected onLayout(ZIIII)V
    .locals 10
    .prologue
    v0 = 0x0;
    v1 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->c;
    v5 = p4 - v1;
    v1 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a;
    v2 = new StringBuilder();
    v3 = "changed = ";
    v2.<init>(v3);
    v2 = v2.append(p1);
    v3 = " left = 0";
    v2 = v2.append(v3);
    v3 = " top = 0";
    v2 = v2.append(v3);
    v3 = " right = ";
    v2 = v2.append(v3);
    v2 = v2.append(v5);
    v3 = " botom = ";
    v2 = v2.append(v3);
    v2 = v2.append(p5);
    v2 = v2.toString();
    Landroid/util/Log.d(v1, v2);
    v6 = p0.getChildCount();
    v4 = v0;
    v1 = v0;
    v2 = v0;
    :goto_0
    if (v4 >= v6) {
//       if-ge v4, v6, :cond_2
    }
    v7 = p0.getChildAt(v4);
    v8 = v7.getMeasuredWidth();
    v3 = v7.getMeasuredHeight();
    v0 = v7.getTag();
    check-cast v0, Ljava/lang/Integer;
    v9 = v0.intValue();
    v0 = v8 + v9;
    v1 += v0;
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    v0 = v3;
    :goto_1
    if (v1 < v5) {
//       if-lt v1, v5, :cond_0
    }
    v1 = v8 + v9;
    v2 = v2 + 0x1;
    v0 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->d;
    v0 += v3;
    v0 *= v2;
    v0 += v3;
    :cond_0
    v8 = v1 - v8;
    v3 = v0 - v3;
    v7.layout(v8, v3, v1, v0);
    v0 = v4 + 0x1;
    v4 = v0;
    goto :goto_0
    :cond_1
    v0 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->d;
    v0 += v3;
    v0 *= v2;
    v0 += v3;
    goto :goto_1
    :cond_2
    return;
.end method
.method protected onMeasure(II)V
    .locals 5
    .prologue
    v1 = 0x0;
    v2 = p0.getChildCount();
    v0 = v1;
    :goto_0
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_1
    }
    v3 = p0.getChildAt(v0);
    v3.measure(v1, v1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v3 = v3.getMeasuredHeight();
    v4 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->d;
    v3 += v4;
    v3 = v3 * 0x3;
    sput v3, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->i:I
    :cond_0
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_1
    Landroid/view/View$MeasureSpec.getSize(p1);
    v0 = Landroid/view/View$MeasureSpec.getSize(p1);
    v1 = Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->i;
    p0.setMeasuredDimension(v0, v1);
    return;
.end method
.method public setOnItemClickListener(Lcom/ushaqi/zhuishushenqi/widget/i;)V
    .locals 0
    .prologue
    sput-object p1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->h:Lcom/ushaqi/zhuishushenqi/widget/i;
    return;
.end method
.method public setWords(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;",
            ">;)V"
        }
    .end annotation
    .prologue
    v3 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v0.clear();
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p1.size();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p1.get(v3);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show;
    v0 = 0x1;
    v2 = v1;
    v1 = v0;
    :goto_1
    v0 = p1.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_3
    }
    v0 = p1.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show;
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_2
    }
    v0 = p1.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show;
    :cond_2
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_1
    :cond_3
    v1 = v3;
    :goto_2
    v0 = p1.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_4
    }
    v3 = new AutoFlowView$Word();
    v3.<init>();
    v0 = p1.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content;
    v3.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content = v0;
    v0 = p1.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show;
    v0 -= v2;
    v3.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v0.add(v3);
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_2
    :cond_4
    p0.a();
    goto :goto_0
.end method
.method public setWords([Ljava/lang/String;)V
    .locals 4
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v0.clear();
    v1 = p1.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_0
    }
    v2 = p1[v0];
    v3 = new AutoFlowView$Word();
    v3.<init>();
    v3.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->content = v2;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->j;
    v2.add(v3);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    p0.a();
    return;
.end method
