.class public Lu/aly/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz",
        "<",
        "Lu/aly/ah;",
        "Lu/aly/ah$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ah$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lu/aly/bR;

.field private static final d:Lu/aly/bK;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lu/aly/bT;",
            ">;",
            "Lu/aly/bU;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field private g:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lu/aly/bR;

    const-string v1, "ActivateMsg"

    invoke-direct {v0, v1}, Lu/aly/bR;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ah;->c:Lu/aly/bR;

    .line 35
    new-instance v0, Lu/aly/bK;

    const-string v1, "ts"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ah;->d:Lu/aly/bK;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    sput-object v0, Lu/aly/ah;->e:Ljava/util/Map;

    const-class v1, Lu/aly/bV;

    new-instance v2, Lu/aly/c;

    invoke-direct {v2, v3}, Lu/aly/c;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/ah;->e:Ljava/util/Map;

    const-class v1, Lu/aly/bW;

    new-instance v2, Lu/aly/e;

    invoke-direct {v2, v3}, Lu/aly/e;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ah$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 109
    sget-object v1, Lu/aly/ah$e;->a:Lu/aly/ah$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "ts"

    .line 110
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ah;->b:Ljava/util/Map;

    .line 112
    const-class v0, Lu/aly/ah;

    sget-object v1, Lu/aly/ah;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/ah;->g:B

    .line 116
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lu/aly/ah;-><init>()V

    .line 122
    iput-wide p1, p0, Lu/aly/ah;->a:J

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ah;->a(Z)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lu/aly/ah;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/ah;->g:B

    .line 130
    iget-byte v0, p1, Lu/aly/ah;->g:B

    iput-byte v0, p0, Lu/aly/ah;->g:B

    .line 131
    iget-wide v0, p1, Lu/aly/ah;->a:J

    iput-wide v0, p0, Lu/aly/ah;->a:J

    .line 132
    return-void
.end method

.method static synthetic h()Lu/aly/bR;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/ah;->c:Lu/aly/bR;

    return-object v0
.end method

.method static synthetic i()Lu/aly/bK;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/ah;->d:Lu/aly/bK;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/ah$e;
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Lu/aly/ah$e;->a(I)Lu/aly/ah$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/ah;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lu/aly/ah;

    invoke-direct {v0, p0}, Lu/aly/ah;-><init>(Lu/aly/ah;)V

    return-object v0
.end method

.method public a(J)Lu/aly/ah;
    .locals 1

    .prologue
    .line 149
    iput-wide p1, p0, Lu/aly/ah;->a:J

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ah;->a(Z)V

    .line 151
    return-object p0
.end method

.method public a(Lu/aly/bN;)V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lu/aly/ah;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/bN;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bU;

    invoke-interface {v0}, Lu/aly/bU;->a()Lu/aly/bT;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/bT;->a(Lu/aly/bN;Lu/aly/bz;)V

    .line 173
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 164
    iget-byte v0, p0, Lu/aly/ah;->g:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ah;->g:B

    .line 165
    return-void
.end method

.method public synthetic b(I)Lu/aly/bE;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lu/aly/ah;->a(I)Lu/aly/ah$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/aly/ah;->a(Z)V

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/ah;->a:J

    .line 142
    return-void
.end method

.method public b(Lu/aly/bN;)V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lu/aly/ah;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/bN;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bU;

    invoke-interface {v0}, Lu/aly/bU;->a()Lu/aly/bT;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/bT;->b(Lu/aly/bN;Lu/aly/bz;)V

    .line 177
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lu/aly/ah;->a:J

    return-wide v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 155
    iget-byte v0, p0, Lu/aly/ah;->g:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ah;->g:B

    .line 156
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 160
    iget-byte v0, p0, Lu/aly/ah;->g:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lu/aly/ah;->a()Lu/aly/ah;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivateMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-wide v2, p0, Lu/aly/ah;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
