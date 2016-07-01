.class public final Lcom/ushaqi/zhuishushenqi/reader/bZ;
.super Ljava/lang/Object;
.source "SourceFile"
# static fields
.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field
# instance fields
.field public a:I
.field public b:I
.field public c:I
.field public d:I
.field public e:I
.field public f:I
.field public g:I
.field public h:I
.field public i:I
.field public j:I
.field private l:I
.field private final m:Landroid/app/Activity;
.field private final n:Landroid/content/res/Resources;
.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/ce;",
            ">;"
        }
    .end annotation
.end field
.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/cc;",
            ">;"
        }
    .end annotation
.end field
.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/ca;",
            ">;"
        }
    .end annotation
.end field
.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/cd;",
            ">;"
        }
    .end annotation
.end field
.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/cb;",
            ">;"
        }
    .end annotation
.end field
.field private t:Landroid/content/SharedPreferences;
.field private u:I
.field private v:Z
.field private w:I
.field private x:Z
.field private y:Z
.field private z:I
# direct methods
.method static constructor <clinit>()V
    .locals 3
    .prologue
    v0 = 0x6;
    new-array v0, v0, [Ljava/lang/String;
    v1 = 0x0;
    v2 = "s";
    v0[v1] = v2;
    v1 = 0x1;
    v2 = "m";
    v0[v1] = v2;
    v1 = 0x2;
    v2 = "l";
    v0[v1] = v2;
    v1 = 0x3;
    v2 = "xl";
    v0[v1] = v2;
    v1 = 0x4;
    v2 = "xxl";
    v0[v1] = v2;
    v1 = 0x5;
    v2 = "3xl";
    v0[v1] = v2;
    v0 = Ljava/util/Arrays.asList(v0);
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->k:Ljava/util/List;
    return;
.end method
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .prologue
    v5 = 0x0;
    v4 = 0x1;
    p0.<init>();
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->o = v0;
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->p = v0;
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->q = v0;
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->r = v0;
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->s = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m = p1;
    v0 = p1.getResources();
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v0 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t = v0;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/bZ;->k;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v3 = "text_spec";
    v0 = Lcom/ushaqi/zhuishushenqi/reader/bZ;->k;
    v0 = v0.get(v4);
    check-cast v0, Ljava/lang/String;
    v0 = v2.getString(v3, v0);
    v0 = v1.indexOf(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v1 = "is_use_system_brightness";
    v0 = v0.getBoolean(v1, v4);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->v = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v1 = "brightness";
    v2 = 0x32;
    v0 = v0.getInt(v1, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->w = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v1 = "night_mode";
    v0 = v0.getBoolean(v1, v5);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v1 = "convert_t";
    v0 = v0.getBoolean(v1, v5);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->y = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v1 = "reader_background_mode";
    v0 = v0.getInt(v1, v4);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->z = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v0 = Landroid/support/design/widget/am.b(v0);
    v0 = v0.Landroid/util/DisplayMetrics;->widthPixels;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v2 = 0x7f06001d;
    v1 = v1.getDimensionPixelSize(v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->c = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v2 = 0x7f060020;
    v1 = v1.getDimensionPixelSize(v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->d = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->c;
    v1 = v1 << 0x1;
    v0 -= v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->f = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v1 = 0x7f06001e;
    v0 = v0.getDimensionPixelSize(v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->l = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v1 = "reader_opt_full_screen";
    v0 = Lcom/arcsoft/hpay100/a/a.l(v0, v1);
    p0.a(v0);
    p0.k();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->z;
    p0.c(v0);
    return;
.end method
.method public static a(Landroid/content/Context;)Z
    .locals 3
    .prologue
    v0 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(p0);
    v1 = "night_mode";
    v2 = 0x0;
    v0 = v0.getBoolean(v1, v2);
    return v0
.end method
.method private c(I)V
    .locals 4
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v1 = 0x7f0b00b2;
    v0 = v0.getColor(v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g = v0;
    v0 = 0x7f0b00b1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h = v0;
    v0 = 0x7f020240;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->j = v0;
    :goto_0
    v0 = 0x99;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g;
    v1 = Landroid/graphics/Color.red(v1);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g;
    v2 = Landroid/graphics/Color.green(v2);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g;
    v3 = Landroid/graphics/Color.blue(v3);
    v0 = Landroid/graphics/Color.argb(v0, v1, v2, v3);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->i = v0;
    return;
    :cond_0
    packed-switch p1, :pswitch_data_0
    goto :goto_0
    :pswitch_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v1 = 0x7f0b00ac;
    v0 = v0.getColor(v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g = v0;
    v0 = 0x7f0b00a6;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h = v0;
    v0 = 0x7f020241;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->j = v0;
    goto :goto_0
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v1 = 0x7f0b00aa;
    v0 = v0.getColor(v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g = v0;
    v0 = 0x7f02023d;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h = v0;
    v0 = 0x7f02023e;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->j = v0;
    goto :goto_0
    :pswitch_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v1 = 0x7f0b00ab;
    v0 = v0.getColor(v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g = v0;
    v0 = 0x7f0b00a7;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h = v0;
    v0 = 0x7f02023f;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->j = v0;
    goto :goto_0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
.method private k()V
    .locals 3
    .prologue
    v0 = 0x3f800000    # 1.0f;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v2 = 0x7f06001f;
    v1 = v1.getDimensionPixelSize(v2);
    int-to-float v1, v1
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u;
    packed-switch v2, :pswitch_data_0
    :goto_0
    :pswitch_0
    v0 *= v1;
    v0 = Ljava/lang/Math.round(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->a = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->a;
    int-to-float v0, v0
    v1 = 0x3ecccccd    # 0.4f;
    v0 *= v1;
    v0 = Ljava/lang/Math.round(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->b = v0;
    return;
    :pswitch_1
    v0 = 0x3f666666    # 0.9f;
    goto :goto_0
    :pswitch_2
    v0 = 0x3f933333    # 1.15f;
    goto :goto_0
    :pswitch_3
    v0 = 0x3fa66666    # 1.3f;
    goto :goto_0
    :pswitch_4
    v0 = 0x3fcccccd    # 1.6f;
    goto :goto_0
    :pswitch_5
    v0 = 0x3ff33333    # 1.9f;
    goto :goto_0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
.method private l()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->p;
    v1 = v0.iterator();
    :goto_0
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cc;
    v0.a();
    goto :goto_0
    :cond_0
    return;
.end method
.method private m()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->q;
    v1 = v0.iterator();
    :goto_0
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ca;
    v0.a();
    goto :goto_0
    :cond_0
    return;
.end method
.method private n()V
    .locals 4
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v1 = v0.edit();
    v2 = "text_spec";
    v0 = Lcom/ushaqi/zhuishushenqi/reader/bZ;->k;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u;
    v0 = v0.get(v3);
    check-cast v0, Ljava/lang/String;
    v1.putString(v2, v0);
    v1.apply();
    return;
.end method
.method private o()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v0 = v0.edit();
    v1 = "brightness";
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->w;
    v0.putInt(v1, v2);
    v1 = "is_use_system_brightness";
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->v;
    v0.putBoolean(v1, v2);
    v0.apply();
    return;
.end method
.method private p()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v1 = "customer_night_theme";
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x;
    Lcom/arcsoft/hpay100/a/a.b(v0, v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v1 = "night_mode";
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x;
    Lcom/arcsoft/hpay100/a/a.b(v0, v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v1 = "start_night_theme_page";
    Lcom/umeng/a/b.a(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    Lcom/arcsoft/hpay100/a/a.B(v0);
    :goto_0
    v0 = new Intent();
    v0.<init>();
    v1 = "broadcastOnThemeChanged";
    v0.setAction(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v1.sendBroadcast(v0);
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    Lcom/arcsoft/hpay100/a/a.C(v0);
    goto :goto_0
.end method
# virtual methods
.method public final a()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x = v0;
    v0 = p0.j();
    p0.c(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->o;
    v1 = v0.iterator();
    :goto_1
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ce;
    v0.a();
    goto :goto_1
    :cond_0
    v0 = 0x0;
    goto :goto_0
    :cond_1
    p0.p();
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v1 = new C();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x;
    v1.<init>(v2);
    v0.c(v1);
    return;
.end method
.method public final a(I)V
    .locals 3
    .prologue
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x;
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x = v0;
    p0.c(p1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->r;
    v2 = v0.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cd;
    v0.a();
    goto :goto_0
    :cond_0
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    p0.p();
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v0 = v0.edit();
    v1 = "reader_background_mode";
    v0.putInt(v1, p1);
    v0.apply();
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ca;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->q;
    v0.add(p1);
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/cb;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->s;
    v0.add(p1);
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/cc;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->p;
    v0.add(p1);
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/cd;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->r;
    v0.add(p1);
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ce;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->o;
    v0.add(p1);
    return;
.end method
.method public final a(Z)V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v1 = "key_enable_imersive_mode";
    v2 = 0x0;
    v0 = v0.getBoolean(v1, v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v1 = "window";
    v0 = v0.getSystemService(v1);
    check-cast v0, Landroid/view/WindowManager;
    v0 = v0.getDefaultDisplay();
    v1 = new Point();
    v1.<init>();
    v0.getRealSize(v1);
    v0 = v1.Landroid/graphics/Point;->x;
    v0 = v1.Landroid/graphics/Point;->y;
    :goto_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->n;
    v2 = 0x7f06001c;
    v1 = v1.getDimensionPixelSize(v2);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->d;
    v2 = v2 << 0x1;
    v0 -= v2;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->l;
    v2 = v2 << 0x1;
    v0 -= v2;
    v1 = v1 << 0x1;
    v0 -= v1;
    if (p1 == 0) {
//       if-eqz p1, :cond_1
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->e = v0;
    :goto_1
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v0 = Lcom/arcsoft/hpay100/a/a.L(v0);
    goto :goto_0
    :cond_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->m;
    v1 = Landroid/support/design/widget/am.k(v1);
    v0 -= v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->e = v0;
    goto :goto_1
.end method
.method public final b()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->y;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->y = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->s;
    v1 = v0.iterator();
    :goto_1
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cb;
    v0.a();
    goto :goto_1
    :cond_0
    v0 = 0x0;
    goto :goto_0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v0 = v0.edit();
    v1 = "convert_t";
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->y;
    v0.putBoolean(v1, v2);
    v0.apply();
    return;
.end method
.method public final b(I)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->w = p1;
    p0.m();
    p0.o();
    return;
.end method
.method public final b(Z)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->v = p1;
    p0.m();
    p0.o();
    return;
.end method
.method public final c()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u;
    return v0
.end method
.method public final d()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/bZ;->k;
    v1 = v1.size();
    v1 = v1 + -0x1;
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u;
    v0 = v0 + 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u = v0;
    p0.k();
    p0.l();
    p0.n();
    :cond_0
    return;
.end method
.method public final e()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u;
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u;
    v0 = v0 + -0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->u = v0;
    p0.k();
    p0.l();
    p0.n();
    :cond_0
    return;
.end method
.method public final f()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->w;
    return v0
.end method
.method public final g()Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->v;
    return v0
.end method
.method public final h()Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->x;
    return v0
.end method
.method public final i()Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->y;
    return v0
.end method
.method public final j()I
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->t;
    v1 = "reader_background_mode";
    v2 = 0x1;
    v0 = v0.getInt(v1, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->z = v0;
    return v0
.end method
