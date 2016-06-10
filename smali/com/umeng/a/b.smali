.class public final Lcom/umeng/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/umeng/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/umeng/a/j;

    invoke-direct {v0}, Lcom/umeng/a/j;-><init>()V

    sput-object v0, Lcom/umeng/a/b;->a:Lcom/umeng/a/j;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/umeng/a/b;->a:Lcom/umeng/a/j;

    invoke-virtual {v0, p0}, Lcom/umeng/a/j;->c(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    v0 = Lcom/umeng/a/b;->a;
    v3 = 0x0;
    v4 = -0x1;
    v6 = 0x1;
    v1 = p0;
    v2 = p1;
    v0.a(..v6);
    return;
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .prologue
    v0 = Landroid/text/TextUtils.isEmpty(p2);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = "MobclickAgent";
    v1 = "label is null or empty";
    Lu/aly/bt.a(v0, v1);
    :goto_0
    return;
    :cond_0
    v0 = Lcom/umeng/a/b;->a;
    v4 = -0x1;
    v6 = 0x1;
    v1 = p0;
    v2 = p1;
    v3 = p2;
    v0.a(..v6);
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .prologue
    v3 = 0x0;
    v0 = Landroid/text/TextUtils.isEmpty(v3);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = "MobclickAgent";
    v1 = "label is null or empty";
    Lu/aly/bt.a(v0, v1);
    :goto_0
    return;
    :cond_0
    v0 = Lcom/umeng/a/b;->a;
    v4 = -0x1;
    v6 = 0x1;
    v1 = p0;
    v2 = p1;
    v0.a(..v6);
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
    .prologue
    v3 = new HashMap();
    v3.<init>();
    v0 = "__ct__";
    v1 = Ljava/lang/Integer.valueOf(p3);
    v3.put(v0, v1);
    v0 = Lcom/umeng/a/b;->a;
    v4 = -0x1;
    v1 = p0;
    v2 = p1;
    v0.a(..v5);
    return;
.end method
.method public static a(Lcom/umeng/a/a/a;)V
    .locals 1
    .prologue
    v0 = Lcom/umeng/a/b;->a;
    v0.a(p0);
    return;
.end method
.method public static a(Ljava/lang/String;)V
    .locals 2
    .prologue
    v0 = Landroid/text/TextUtils.isEmpty(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Lcom/umeng/a/b;->a;
    v0.a(p0);
    :goto_0
    return;
    :cond_0
    v0 = "MobclickAgent";
    v1 = "pageName is null or empty";
    Lu/aly/bt.b(v0, v1);
    goto :goto_0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    Lcom/umeng/a/o.a(p0);
    v0 = invoke-static {}, Lcom/umeng/a/o;->g()Landroid/content/SharedPreferences;
    v1 = "";
    v0 = v0.getString(p1, v1);
    return v0;
.end method
.method public static b(Landroid/content/Context;)V
    .locals 2
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    v0 = "MobclickAgent";
    v1 = "unexpected null context in onResume";
    Lu/aly/bt.b(v0, v1);
    :goto_0
    return;
    :cond_0
    v0 = Lcom/umeng/a/b;->a;
    v0.b(p0);
    goto :goto_0
.end method
.method public static b(Ljava/lang/String;)V
    .locals 2
    .prologue
    v0 = Landroid/text/TextUtils.isEmpty(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Lcom/umeng/a/b;->a;
    v0.b(p0);
    :goto_0
    return;
    :cond_0
    v0 = "MobclickAgent";
    v1 = "pageName is null or empty";
    Lu/aly/bt.b(v0, v1);
    goto :goto_0
.end method
.method public static c(Landroid/content/Context;)V
    .locals 1
    .prologue
    v0 = Lcom/umeng/a/b;->a;
    v0.a(p0);
    return;
.end method
