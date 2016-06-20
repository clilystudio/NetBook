.class public Lcom/ushaqi/zhuishushenqi/adapter/G;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"
# instance fields
.field private a:Landroid/content/Context;
.field private b:Z
.field private c:Z
.field private d:Landroid/view/View;
.field private e:Lcom/ushaqi/zhuishushenqi/model/Tweet;
.field private f:Z
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/adapter/G;;
    v0.getSimpleName();
    return;
.end method
.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 3
    .prologue
    v2 = 0x0;
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->f = v2;
    p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a = p1;
    p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->c = p2;
    p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->b = p3;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v0 = v0.getTheme();
    v1 = 0x2;
    new-array v1, v1, [I
    fill-array-data v1, :array_0
    v0 = v0.obtainStyledAttributes(v1);
    v1 = 0x7f0202b1;
    v0.getResourceId(v2, v1);
    v1 = 0x1;
    v2 = 0x7f0202af;
    v0.getResourceId(v1, v2);
    v0.recycle();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = "community_user_gender_icon_toggle";
    v0 = Lcom/arcsoft/hpay100/a/a.r(v0, v1);
    p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->f = v0;
    return;
    nop
    :array_0
    .array-data 4
        0x7f010024
        0x7f010023
    .end array-data
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)I
    .locals 6
    .prologue
    v2 = 0x2;
    v1 = 0x1;
    v0 = 0x0;
    :goto_0
    v4 = p1.getType();
    v3 = -0x1;
    v5 = v4.hashCode();
    sparse-switch v5, :sswitch_data_0
    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0
    :goto_2
    :pswitch_0
    return v0
    :sswitch_0
    v5 = "TWEET";
    v4 = v4.equals(v5);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v3 = v0;
    goto :goto_1
    :sswitch_1
    v5 = "RETWEET";
    v4 = v4.equals(v5);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v3 = v1;
    goto :goto_1
    :sswitch_2
    v5 = "REVIEW";
    v4 = v4.equals(v5);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v3 = v2;
    goto :goto_1
    :sswitch_3
    v5 = "ARTICLE";
    v4 = v4.equals(v5);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v3 = 0x3;
    goto :goto_1
    :pswitch_1
    p1 = p1.getRefTweet();
    goto :goto_0
    :pswitch_2
    v0 = v1;
    goto :goto_2
    :pswitch_3
    v0 = v2;
    goto :goto_2
    :sswitch_data_0
    .sparse-switch
        -0x701e14a8 -> :sswitch_2
        -0xdba72a -> :sswitch_3
        0x4c84e51 -> :sswitch_0
        0x6c45abfe -> :sswitch_1
    .end sparse-switch
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    return v0;
.end method
.method private a(Landroid/view/View;ILandroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .prologue
    v2 = 0x0;
    if (p1 != 0) {
//       if-nez p1, :cond_0
    }
    packed-switch p2, :pswitch_data_0
    :cond_0
    :goto_0
    return p1;
    :pswitch_0
    v0 = p3.getContext();
    v0 = Landroid/view/LayoutInflater.from(v0);
    v1 = 0x7f030111;
    p1 = v0.inflate(v1, p3, v2);
    v0 = new R();
    v0.<init>(p0, p1);
    p1.setTag(v0);
    goto :goto_0
    :pswitch_1
    v0 = p3.getContext();
    v0 = Landroid/view/LayoutInflater.from(v0);
    v1 = 0x7f030113;
    p1 = v0.inflate(v1, p3, v2);
    v0 = 0x7f0c01e4;
    v0 = p1.findViewById(v0);
    v0.setVisibility(v2);
    v0 = new R();
    v0.<init>(p0, p1);
    p1.setTag(v0);
    goto :goto_0
    :pswitch_2
    v0 = p3.getContext();
    v0 = Landroid/view/LayoutInflater.from(v0);
    v1 = 0x7f030112;
    p1 = v0.inflate(v1, p3, v2);
    v0 = new R();
    v0.<init>(p0, p1);
    p1.setTag(v0);
    goto :goto_0
    :pswitch_3
    v0 = p0.getItem(p4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;
    v0 = v0.getRefTweet();
    v0 = p0.a(v0);
    p1 = p0.a(p1, v0, p3, p4);
    goto :goto_0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->d = p1;
    return p1;
.end method
.method private a(ILandroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 1
    .prologue
    packed-switch p1, :pswitch_data_0
    :goto_0
    return;
    :pswitch_0
    v0 = new H();
    v0.<init>(p0, p3);
    p2.setOnClickListener(v0);
    goto :goto_0
    :pswitch_1
    v0 = new I();
    v0.<init>(p0, p3);
    p2.setOnClickListener(v0);
    goto :goto_0
    :pswitch_2
    v0 = new J();
    v0.<init>(p0, p3);
    p2.setOnClickListener(v0);
    goto :goto_0
    nop
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
.method private static a(Landroid/view/View;IIII)V
    .locals 7
    .prologue
    v2 = 0xf;
    v0 = p0.getParent();
    v6 = v0;
    check-cast v6, Landroid/view/View;
    v0 = new Q();
    v1 = p0;
    v3 = v2;
    v4 = v2;
    v5 = v2;
    v0.<init>(..v5);
    v6.post(v0);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 5
    .prologue
    v2 = 0x2;
    v4 = 0x1;
    v3 = 0x0;
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity.a(v1);
    v0.startActivity(v1);
    :cond_0
    :goto_0
    return;
    :cond_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->b;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    v1 = Lcom/ushaqi/zhuishushenqi/adapter/G.a(v0, p2);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    p0.b(p1);
    v1 = new V();
    v1.<init>(p0, v3);
    new-array v2, v2, [Ljava/lang/String;
    v0 = v0.getToken();
    v2[v3] = v0;
    v0 = p2.getId();
    v2[v4] = v0;
    v1.execute(v2);
    goto :goto_0
    :cond_2
    p0.a(p1);
    v1 = new T();
    v1.<init>(p0, v3);
    new-array v2, v2, [Ljava/lang/String;
    v0 = v0.getToken();
    v2[v3] = v0;
    v0 = p2.getId();
    v2[v4] = v0;
    v1.execute(v2);
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 4
    .prologue
    v0 = p1.getPost();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v2 = p1.get_id();
    v3 = "TWEET";
    v1 = Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity.a(v1, v2, v3);
    v0.startActivity(v1);
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v2 = p1.getPost();
    v2 = v2.getId();
    v3 = p1.getPost();
    v3 = v3.getBlock();
    v1 = Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity.a(v1, v2, v3);
    v0.startActivity(v1);
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 3
    .prologue
    v0 = p1.isRetween();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p1.getRefTweet();
    :goto_0
    v0 = v0.getRetweeted();
    v0 = v0 + 0x1;
    p1.setRetweeted(v0);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->g;
    v2 = new StringBuilder();
    v2.<init>();
    v0 = v2.append(v0);
    v0 = v0.toString();
    v1.setText(v0);
    return;
    :cond_0
    v0 = p1;
    goto :goto_0
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 5
    .prologue
    v4 = 0x0;
    v3 = 0x0;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1 = "\u5df2\u5173\u6ce8";
    v0.setText(v1);
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1 = -0x58da00;
    v0.setTextColor(v1);
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1 = 0x41200000    # 10.0f;
    v0.setTextSize(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v0 = v0.getResources();
    v1 = 0x7f02017f;
    v0 = v0.getDrawable(v1);
    v1 = v0.getMinimumWidth();
    v1 = v1 * 0x9;
    v1 = v1 / 0x10;
    v2 = v0.getMinimumHeight();
    v2 = v2 * 0x9;
    v2 = v2 / 0x10;
    v0.setBounds(v4, v4, v1, v2);
    v1 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1.setCompoundDrawables(v0, v3, v3, v3);
    return;
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/User;Z)V
    .locals 5
    .prologue
    v4 = 0x0;
    v3 = 0x0;
    v1 = 0xf;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    Lcom/ushaqi/zhuishushenqi/adapter/G.a(v0, v1, v1, v1, v1);
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v0.setVisibility(v3);
    if (p4 == 0) {
//       if-eqz p4, :cond_0
    }
    v0 = "\u5220\u9664";
    v1 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v2 = new N();
    v2.<init>(p0, p1, p2);
    v1.setOnClickListener(v2);
    v1 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1.setText(v0);
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v0 = v0.getResources();
    v1 = 0x7f0201b6;
    v0 = v0.getDrawable(v1);
    v1 = v0.getMinimumWidth();
    v2 = v0.getMinimumHeight();
    v0.setBounds(v3, v3, v1, v2);
    v1 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1.setCompoundDrawables(v0, v4, v4, v4);
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1 = -0x555556;
    v0.setTextColor(v1);
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->b;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = Lcom/ushaqi/zhuishushenqi/adapter/G.a(v0, p3);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    p0.a(p1);
    :cond_1
    :goto_1
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1 = new M();
    v1.<init>(p0, p1, p3);
    v0.setOnClickListener(v1);
    goto :goto_0
    :cond_2
    p0.b(p1);
    goto :goto_1
    :cond_3
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1 = 0x4;
    v0.setVisibility(v1);
    goto :goto_0
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 11
    .prologue
    v10 = 0x3;
    v9 = 0x1;
    v3 = 0x8;
    v8 = 0x0;
    v4 = 0x0;
    v0 = p1.isRetween();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p1.getFrom();
    :goto_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->b;
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = p1.isHot();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = p1.isRetween();
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1 = p1.getRefTweet();
    v1 = v1.isHot();
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    :cond_0
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->k;
    v1.setVisibility(v4);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->k;
    v2 = "hot";
    v1.a(v2);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->e;
    v1.setVisibility(v3);
    :goto_1
    v1 = p1.isRetween();
    if (v1 == 0) {
//       if-eqz v1, :cond_c
    }
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->l;
    v1.setVisibility(v4);
    v1 = p1.getUser();
    v1 = v1.getNickname();
    v2 = p1.getNames();
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    v2 = p1.Lcom/ushaqi/zhuishushenqi/model/Tweet;->names;
    v2 = v2.length;
    if (v2 <= 0) {
//       if-lez v2, :cond_4
    }
    v1 = "";
    v2 = v1;
    v1 = v4;
    :goto_2
    if (v1 >= v10) {
//       if-ge v1, v10, :cond_3
    }
    v5 = p1.getNames();
    v5 = v5.length;
    if (v1 >= v5) {
//       if-ge v1, v5, :cond_3
    }
    v5 = new StringBuilder();
    v5.<init>();
    v2 = v5.append(v2);
    v5 = p1.getNames();
    v5 = v5[v1];
    v2 = v2.append(v5);
    v5 = " , ";
    v2 = v2.append(v5);
    v2 = v2.toString();
    v1 = v1 + 0x1;
    goto :goto_2
    :cond_1
    v0 = p1.getUser();
    goto :goto_0
    :cond_2
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->k;
    v1.setVisibility(v3);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->e;
    v1.setVisibility(v4);
    goto :goto_1
    :cond_3
    v1 = v2.length();
    v1 = v1 + -0x2;
    v1 = v2.substring(v4, v1);
    v2 = p1.getNames();
    v2 = v2.length;
    if (v2 <= v10) {
//       if-le v2, v10, :cond_4
    }
    v2 = new StringBuilder();
    v2.<init>();
    v1 = v2.append(v1);
    v2 = " \u7b49";
    v1 = v1.append(v2);
    v2 = p1.getNames();
    v2 = v2.length;
    v1 = v1.append(v2);
    v2 = "\u4eba";
    v1 = v1.append(v2);
    v1 = v1.toString();
    :cond_4
    v2 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->l;
    v5 = new StringBuilder();
    v6 = " ";
    v5.<init>(v6);
    v1 = v5.append(v1);
    v5 = " \u8f6c\u53d1\u4e86\u8fd9\u6761\u52a8\u6001";
    v1 = v1.append(v5);
    v1 = v1.toString();
    v2.setText(v1);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->e;
    v2 = p1.getCreated();
    v2 = Lcom/ushaqi/zhuishushenqi/util/t.e(v2);
    v1.setText(v2);
    v1 = p1.getRefTweet();
    v2 = p1.getFrom();
    v1.setUser(v2);
    p1 = p1.getRefTweet();
    :goto_3
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->a;
    v2 = v0.getFullAvatar();
    v1.setImageUrl(v2);
    v1 = p0.a(p1);
    if (v1 == 0) {
//       if-eqz v1, :cond_5
    }
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->i;
    v2 = p1.getTitle();
    v1.setText(v2);
    :cond_5
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->b;
    v2 = v0.getNickname();
    v1.setText(v2);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->c;
    v2 = p1.getContent();
    v1.setText(v2);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->d;
    v2 = new StringBuilder();
    v5 = "lv.";
    v2.<init>(v5);
    v5 = v0.getLv();
    v2 = v2.append(v5);
    v2 = v2.toString();
    v1.setText(v2);
    v1 = new StringBuilder();
    v1.<init>();
    v2 = p1.getCommented();
    v1 = v1.append(v2);
    v1 = v1.toString();
    v2 = new StringBuilder();
    v2.<init>();
    v5 = p1.getRetweeted();
    v2 = v2.append(v5);
    v2 = v2.toString();
    v5 = p1.getVotes();
    if (v5 == 0) {
//       if-eqz v5, :cond_6
    }
    v5 = p1.getVotes();
    v5 = v5.length;
    if (v5 != 0) {
//       if-nez v5, :cond_d
    }
    :cond_6
    v5 = p1.getCommented();
    v6 = 0x270f;
    if (v5 <= v6) {
//       if-le v5, v6, :cond_7
    }
    v1 = p1.getCommented();
    v1 = Lcom/arcsoft/hpay100/a/a.i(v1);
    :cond_7
    v5 = p1.getRetweeted();
    v6 = 0x270f;
    if (v5 <= v6) {
//       if-le v5, v6, :cond_8
    }
    v2 = p1.getRetweeted();
    v2 = Lcom/arcsoft/hpay100/a/a.i(v2);
    :cond_8
    v5 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v5 = v5.getResources();
    v6 = 0x7f02018e;
    v5 = v5.getDrawable(v6);
    v6 = v5.getMinimumWidth();
    v7 = v5.getMinimumHeight();
    v5.setBounds(v4, v4, v6, v7);
    v6 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->f;
    v6.setCompoundDrawables(v5, v8, v8, v8);
    v5 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->f;
    v6 = p1.getCommented();
    if (v6 != 0) {
//       if-nez v6, :cond_9
    }
    v1 = "\u8bc4\u8bba";
    :cond_9
    v5.setText(v1);
    :goto_4
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->g;
    v5 = p1.getRetweeted();
    if (v5 != 0) {
//       if-nez v5, :cond_a
    }
    v2 = "\u8f6c\u53d1";
    :cond_a
    v1.setText(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity.a(v1);
    v2 = "USER_ID";
    v5 = p1.getUser();
    v5 = v5.getId();
    v1.putExtra(v2, v5);
    v2 = "USER_NAME";
    v5 = p1.getUser();
    v5 = v5.getNickname();
    v1.putExtra(v2, v5);
    v2 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->a;
    v5 = new K();
    v5.<init>(p0, v1);
    v2.setOnClickListener(v5);
    if (p1 == 0) {
//       if-eqz p1, :cond_b
    }
    v1 = p0.a(p1);
    if (v9 != v1) {
//       if-ne v9, v1, :cond_b
    }
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->m;
    v2 = p1.getBook();
    v2 = v2.getTitle();
    v1.setText(v2);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->n;
    v2 = p1.getScore();
    v1.setValue(v2);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->o;
    v2 = p1.getBook();
    v2 = v2.getCover();
    v1.setImageUrl(v2);
    v2 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->j;
    v1 = p1.getBook();
    if (v1 != 0) {
//       if-nez v1, :cond_f
    }
    v1 = v3;
    :goto_5
    v2.setVisibility(v1);
    :cond_b
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->f;
    if (v1 == 0) {
//       if-eqz v1, :cond_12
    }
    v1 = v0.getGenderFlag();
    if (v1 != 0) {
//       if-nez v1, :cond_10
    }
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v1 = 0x2;
    v0.setImageLevel(v1);
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setVisibility(v4);
    :goto_6
    return;
    :cond_c
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->l;
    v1.setVisibility(v3);
    v1 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->e;
    v2 = p1.getCreated();
    v2 = Lcom/ushaqi/zhuishushenqi/util/t.e(v2);
    v1.setText(v2);
    goto/16 :goto_3
    :cond_d
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = v1.getResources();
    v5 = 0x7f0201d3;
    v1 = v1.getDrawable(v5);
    v5 = v1.getMinimumWidth();
    v6 = v1.getMinimumHeight();
    v1.setBounds(v4, v4, v5, v6);
    v5 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->f;
    v5.setCompoundDrawables(v1, v8, v8, v8);
    v5 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->f;
    v1 = p1.getVoteCount();
    if (v1 != 0) {
//       if-nez v1, :cond_e
    }
    v1 = "\u8bc4\u8bba";
    :goto_7
    v5.setText(v1);
    goto/16 :goto_4
    :cond_e
    v1 = new StringBuilder();
    v1.<init>();
    v6 = p1.getVoteCount();
    v1 = v1.append(v6);
    v1 = v1.toString();
    goto :goto_7
    :cond_f
    v1 = v4;
    goto :goto_5
    :cond_10
    v0 = v0.getGenderFlag();
    if (v0 != v9) {
//       if-ne v0, v9, :cond_11
    }
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setImageLevel(v10);
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setVisibility(v4);
    goto :goto_6
    :cond_11
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v1 = 0x4;
    v0.setImageLevel(v1);
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setVisibility(v4);
    goto :goto_6
    :cond_12
    v1 = v0.isOfficial();
    if (v1 == 0) {
//       if-eqz v1, :cond_13
    }
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setImageLevel(v4);
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setVisibility(v4);
    goto/16 :goto_6
    :cond_13
    v0 = v0.isDoyan();
    if (v0 == 0) {
//       if-eqz v0, :cond_14
    }
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setImageLevel(v9);
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setVisibility(v4);
    goto/16 :goto_6
    :cond_14
    v0 = p2.Lcom/ushaqi/zhuishushenqi/adapter/R;->p;
    v0.setVisibility(v3);
    goto/16 :goto_6
.end method
.method public static a(Lcom/ushaqi/zhuishushenqi/model/Account;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Z
    .locals 2
    .prologue
    v0 = 0x0;
    v1 = Lcom/ushaqi/zhuishushenqi/adapter/G.a(p1, p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = p1.isRetween();
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    p1 = p1.getRefTweet();
    :cond_2
    v1 = p1.get_id();
    v1 = Lcom/ushaqi/zhuishushenqi/adapter/G.a(p0, v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v0 = 0x1;
    goto :goto_0
.end method
.method private static a(Lcom/ushaqi/zhuishushenqi/model/Account;Lcom/ushaqi/zhuishushenqi/model/User;)Z
    .locals 2
    .prologue
    v0 = p0.getUser();
    v0 = v0.getId();
    v1 = p1.getId();
    v0 = Lcom/ushaqi/zhuishushenqi/db/FollowRecord.isFollowed(v0, v1);
    return v0
.end method
.method public static a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)Z
    .locals 1
    .prologue
    v0 = p0.getUser();
    v0 = v0.getId();
    v0 = Lcom/ushaqi/zhuishushenqi/db/RetweenRecord.isRetweened(v0, p1);
    return v0
.end method
.method public static a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/Account;)Z
    .locals 2
    .prologue
    v0 = p0.getUser();
    v0 = v0.getId();
    v1 = p1.getUser();
    v1 = v1.getId();
    v0 = v0.equals(v1);
    return v0
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/view/View;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->d;
    return v0;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 4
    .prologue
    v0 = p1.getPost();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v2 = p1.get_id();
    v3 = "ARTICLE";
    v1 = Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity.a(v1, v2, v3);
    v0.startActivity(v1);
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v2 = p1.getPost();
    v2 = v2.getId();
    v3 = p1.getPost();
    v3 = v3.getBlock();
    v1 = Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity.a(v1, v2, v3);
    v0.startActivity(v1);
    goto :goto_0
.end method
.method private b(Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 5
    .prologue
    v4 = 0x0;
    v3 = 0x0;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1 = "\u5173\u6ce8";
    v0.setText(v1);
    v0 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1 = v1.getResources();
    v2 = 0x7f0b00d7;
    v1 = v1.getColor(v2);
    v0.setTextColor(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v0 = v0.getResources();
    v1 = 0x7f02012b;
    v0 = v0.getDrawable(v1);
    v1 = v0.getMinimumWidth();
    v2 = v0.getMinimumHeight();
    v0.setBounds(v4, v4, v1, v2);
    v1 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v2 = 0x41200000    # 10.0f;
    v1.setTextSize(v2);
    v1 = p1.Lcom/ushaqi/zhuishushenqi/adapter/R;->h;
    v1.setCompoundDrawables(v0, v3, v3, v3);
    return;
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/adapter/G;)Lcom/ushaqi/zhuishushenqi/model/Tweet;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->e;
    return v0;
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 4
    .prologue
    v0 = 0x0;
    v1 = p1.getPost();
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v0 = new Intent();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v2 = Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;;
    v0.<init>(v1, v2);
    v1 = p1.get_id();
    v2 = "BOOK_COMMENT";
    v3 = "extraReviewId";
    v0.putExtra(v3, v1);
    v1 = "EXTRA_TYPE_NAME";
    v0.putExtra(v1, v2);
    :cond_0
    :goto_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v1.startActivity(v0);
    return;
    :cond_1
    v1 = "review";
    v2 = p1.getPost();
    v2 = v2.getBlock();
    v1 = v1.equals(v2);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v0 = new Intent();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v2 = Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;;
    v0.<init>(v1, v2);
    v1 = p1.getPost();
    v1 = v1.getId();
    v2 = p1.getPost();
    v2 = v2.getBlock();
    v3 = "extraReviewId";
    v0.putExtra(v3, v1);
    v1 = "EXTRA_TYPE_NAME";
    v0.putExtra(v1, v2);
    goto :goto_0
    :cond_2
    v1 = "book";
    v2 = p1.getPost();
    v2 = v2.getBlock();
    v1 = v1.equals(v2);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = p1.getPost();
    v0 = v0.getId();
    v1 = p1.getPost();
    v1 = v1.getBlock();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity.a(v2, v0, v1);
    goto :goto_0
.end method
.method static synthetic d(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Lcom/ushaqi/zhuishushenqi/model/Tweet;
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->e = p1;
    return p1;
.end method
# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .prologue
    v0 = p0.getItem(p1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;
    v0 = p0.a(v0);
    return v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .prologue
    v6 = 0xf;
    v2 = p0.getItemViewType(p1);
    v3 = p0.a(p2, v2, p3, p1);
    v0 = p0.getItem(p1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;
    v1 = v3.getTag();
    check-cast v1, Lcom/ushaqi/zhuishushenqi/adapter/R;
    packed-switch v2, :pswitch_data_0
    :goto_0
    v2 = p0.Lcom/ushaqi/zhuishushenqi/adapter/G;->c;
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = 0x0;
    v4 = 0x1;
    p0.a(v1, v0, v2, v4);
    :goto_1
    return v3;
    :pswitch_0
    p0.a(v0, v1);
    p0.a(v2, v3, v0);
    goto :goto_0
    :pswitch_1
    v4 = v1.Lcom/ushaqi/zhuishushenqi/adapter/R;->i;
    v5 = v0.getTitle();
    v4.setText(v5);
    p0.a(v2, v3, v0);
    p0.a(v0, v1);
    goto :goto_0
    :pswitch_2
    v4 = v1.Lcom/ushaqi/zhuishushenqi/adapter/R;->i;
    v5 = v0.getTitle();
    v4.setText(v5);
    p0.a(v0, v1);
    p0.a(v2, v3, v0);
    goto :goto_0
    :pswitch_3
    p0.a(v0, v1);
    v2 = p0.a(v0);
    v4 = v0.getRefTweet();
    p0.a(v2, v3, v4);
    goto :goto_0
    :cond_0
    v2 = v0.getUser();
    v4 = 0x0;
    p0.a(v1, v0, v2, v4);
    v2 = v1.Lcom/ushaqi/zhuishushenqi/adapter/R;->g;
    Lcom/ushaqi/zhuishushenqi/adapter/G.a(v2, v6, v6, v6, v6);
    v2 = v1.Lcom/ushaqi/zhuishushenqi/adapter/R;->g;
    v4 = new L();
    v4.<init>(p0, v0, v1);
    v2.setOnClickListener(v4);
    goto :goto_1
    nop
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
.method public getViewTypeCount()I
    .locals 1
    .prologue
    v0 = 0x3;
    return v0
.end method
