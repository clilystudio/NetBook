.class public Lcom/c/a/s;
.super Ljava/lang/Object;
.source "SourceFile"
# interfaces
.implements Ljava/lang/Cloneable;
# static fields
.field private static final e:Lcom/c/a/v;
.field private static final f:Lcom/c/a/v;
# instance fields
.field a:Ljava/lang/String;
.field b:Lcom/c/a/r;
.field private c:Lcom/xiaomi/mistatistic/sdk/a/r;
.field private d:Ljava/lang/Class;
.field private g:Lcom/c/a/v;
.field private h:Ljava/lang/Object;
# direct methods
.method static constructor <clinit>()V
    .locals 8
    .prologue
    v7 = 0x4;
    v6 = 0x3;
    v5 = 0x2;
    v4 = 0x1;
    v3 = 0x0;
    v0 = new m();
    v0.<init>();
    sput-object v0, Lcom/c/a/s;->e:Lcom/c/a/v;
    v0 = new k();
    v0.<init>();
    sput-object v0, Lcom/c/a/s;->f:Lcom/c/a/v;
    v0 = 0x6;
    new-array v0, v0, [Ljava/lang/Class;
    v1 = Ljava/lang/Float;->TYPE;
    v0[v3] = v1;
    v1 = Ljava/lang/Float;;
    v0[v4] = v1;
    v1 = Ljava/lang/Double;->TYPE;
    v0[v5] = v1;
    v1 = Ljava/lang/Integer;->TYPE;
    v0[v6] = v1;
    v1 = Ljava/lang/Double;;
    v0[v7] = v1;
    v1 = 0x5;
    v2 = Ljava/lang/Integer;;
    v0[v1] = v2;
    v0 = 0x6;
    new-array v0, v0, [Ljava/lang/Class;
    v1 = Ljava/lang/Integer;->TYPE;
    v0[v3] = v1;
    v1 = Ljava/lang/Integer;;
    v0[v4] = v1;
    v1 = Ljava/lang/Float;->TYPE;
    v0[v5] = v1;
    v1 = Ljava/lang/Double;->TYPE;
    v0[v6] = v1;
    v1 = Ljava/lang/Float;;
    v0[v7] = v1;
    v1 = 0x5;
    v2 = Ljava/lang/Double;;
    v0[v1] = v2;
    v0 = 0x6;
    new-array v0, v0, [Ljava/lang/Class;
    v1 = Ljava/lang/Double;->TYPE;
    v0[v3] = v1;
    v1 = Ljava/lang/Double;;
    v0[v4] = v1;
    v1 = Ljava/lang/Float;->TYPE;
    v0[v5] = v1;
    v1 = Ljava/lang/Integer;->TYPE;
    v0[v6] = v1;
    v1 = Ljava/lang/Float;;
    v0[v7] = v1;
    v1 = 0x5;
    v2 = Ljava/lang/Integer;;
    v0[v1] = v2;
    v0 = new HashMap();
    v0.<init>();
    v0 = new HashMap();
    v0.<init>();
    return;
.end method
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .prologue
    p0.<init>();
    v0 = 0x0;
    p0.Lcom/c/a/s;->b = v0;
    v0 = new ReentrantReadWriteLock();
    v0.<init>();
    p0.Lcom/c/a/s;->a = p1;
    return;
.end method
.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .prologue
    p0.<init>(p1);
    return;
.end method
.method public static varargs a(Ljava/lang/String;[F)Lcom/c/a/s;
    .locals 1
    .prologue
    v0 = new t();
    v0.<init>(p0, p1);
    return v0;
.end method
.method public static varargs a(Ljava/lang/String;[I)Lcom/c/a/s;
    .locals 1
    .prologue
    v0 = new u();
    v0.<init>(p0, p1);
    return v0;
.end method
# virtual methods
.method public a()Lcom/c/a/s;
    .locals 2
    .prologue
    :try_start_0
    v0 = Ljava/lang/Object.clone(p0);
    check-cast v0, Lcom/c/a/s;
    v1 = p0.Lcom/c/a/s;->a;
    v0.Lcom/c/a/s;->a = v1;
    v1 = p0.Lcom/c/a/s;->c;
    v0.Lcom/c/a/s;->c = v1;
    v1 = p0.Lcom/c/a/s;->b;
    v1 = v1.a();
    v0.Lcom/c/a/s;->b = v1;
    v1 = p0.Lcom/c/a/s;->g;
    v0.Lcom/c/a/s;->g = v1;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method a(F)V
    .locals 1
    .prologue
    v0 = p0.Lcom/c/a/s;->b;
    v0 = v0.a(p1);
    p0.Lcom/c/a/s;->h = v0;
    return;
.end method
.method public varargs a([F)V
    .locals 6
    .prologue
    v5 = 0x0;
    v1 = 0x1;
    v4 = 0x0;
    v0 = Ljava/lang/Float;->TYPE;
    p0.Lcom/c/a/s;->d = v0;
    v2 = p1.length;
    v0 = 0x2;
    v0 = Ljava/lang/Math.max(v2, v0);
    new-array v3, v0, [Lcom/c/a/p;
    if (v2 != v1) {
//       if-ne v2, v1, :cond_1
    }
    v0 = new p();
    v0.<init>(v5);
    check-cast v0, Lcom/c/a/p;
    v3[v4] = v0;
    v0 = 0x3f800000    # 1.0f;
    v2 = p1[v4];
    v0 = Lcom/c/a/o.a(v0, v2);
    check-cast v0, Lcom/c/a/p;
    v3[v1] = v0;
    :cond_0
    v0 = new l();
    v0.<init>(v3);
    p0.Lcom/c/a/s;->b = v0;
    return;
    :cond_1
    v0 = p1[v4];
    v0 = Lcom/c/a/o.a(v5, v0);
    check-cast v0, Lcom/c/a/p;
    v3[v4] = v0;
    :goto_0
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_0
    }
    int-to-float v0, v1
    v4 = v2 + -0x1;
    int-to-float v4, v4
    v0 /= v4;
    v4 = p1[v1];
    v0 = Lcom/c/a/o.a(v0, v4);
    check-cast v0, Lcom/c/a/p;
    v3[v1] = v0;
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
.end method
.method public varargs a([I)V
    .locals 6
    .prologue
    v5 = 0x0;
    v1 = 0x1;
    v4 = 0x0;
    v0 = Ljava/lang/Integer;->TYPE;
    p0.Lcom/c/a/s;->d = v0;
    v2 = p1.length;
    v0 = 0x2;
    v0 = Ljava/lang/Math.max(v2, v0);
    new-array v3, v0, [Lcom/c/a/q;
    if (v2 != v1) {
//       if-ne v2, v1, :cond_1
    }
    v0 = new q();
    v0.<init>(v5);
    check-cast v0, Lcom/c/a/q;
    v3[v4] = v0;
    v0 = 0x3f800000    # 1.0f;
    v2 = p1[v4];
    v0 = Lcom/c/a/o.a(v0, v2);
    check-cast v0, Lcom/c/a/q;
    v3[v1] = v0;
    :cond_0
    v0 = new n();
    v0.<init>(v3);
    p0.Lcom/c/a/s;->b = v0;
    return;
    :cond_1
    v0 = p1[v4];
    v0 = Lcom/c/a/o.a(v5, v0);
    check-cast v0, Lcom/c/a/q;
    v3[v4] = v0;
    :goto_0
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_0
    }
    int-to-float v0, v1
    v4 = v2 + -0x1;
    int-to-float v4, v4
    v0 /= v4;
    v4 = p1[v1];
    v0 = Lcom/c/a/o.a(v0, v4);
    check-cast v0, Lcom/c/a/q;
    v3[v1] = v0;
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
.end method
.method final b()V
    .locals 2
    .prologue
    v0 = p0.Lcom/c/a/s;->g;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/c/a/s;->d;
    v1 = Ljava/lang/Integer;;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_2
    }
    v0 = Lcom/c/a/s;->e;
    :goto_0
    p0.Lcom/c/a/s;->g = v0;
    :cond_0
    v0 = p0.Lcom/c/a/s;->g;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/c/a/s;->b;
    v1 = p0.Lcom/c/a/s;->g;
    v0.Lcom/c/a/r;->d = v1;
    :cond_1
    return;
    :cond_2
    v0 = p0.Lcom/c/a/s;->d;
    v1 = Ljava/lang/Float;;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_3
    }
    v0 = Lcom/c/a/s;->f;
    goto :goto_0
    :cond_3
    v0 = 0x0;
    goto :goto_0
.end method
.method c()Ljava/lang/Object;
    .locals 1
    .prologue
    v0 = p0.Lcom/c/a/s;->h;
    return v0;
.end method
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .prologue
    v0 = p0.a();
    return v0;
.end method
.method public toString()Ljava/lang/String;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = p0.Lcom/c/a/s;->a;
    v0 = v0.append(v1);
    v1 = ": ";
    v0 = v0.append(v1);
    v1 = p0.Lcom/c/a/s;->b;
    v1 = v1.toString();
    v0 = v0.append(v1);
    v0 = v0.toString();
    return v0;
.end method
