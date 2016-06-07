.class public Lu/aly/ay;
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
        "Lu/aly/ay;",
        "Lu/aly/ay$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ay$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/bR;

.field private static final e:Lu/aly/bK;

.field private static final f:Lu/aly/bK;

.field private static final g:Ljava/util/Map;
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
.field public a:Ljava/lang/String;

.field public b:J

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lu/aly/bR;

    const-string v1, "Page"

    invoke-direct {v0, v1}, Lu/aly/bR;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ay;->d:Lu/aly/bR;

    .line 35
    new-instance v0, Lu/aly/bK;

    const-string v1, "page_name"

    invoke-direct {v0, v1, v7, v5}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ay;->e:Lu/aly/bK;

    .line 36
    new-instance v0, Lu/aly/bK;

    const-string v1, "duration"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ay;->f:Lu/aly/bK;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sput-object v0, Lu/aly/ay;->g:Ljava/util/Map;

    const-class v1, Lu/aly/bV;

    new-instance v2, Lu/aly/aE;

    invoke-direct {v2, v3}, Lu/aly/aE;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lu/aly/ay;->g:Ljava/util/Map;

    const-class v1, Lu/aly/bW;

    new-instance v2, Lu/aly/aG;

    invoke-direct {v2, v3}, Lu/aly/aG;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ay$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lu/aly/ay$e;->a:Lu/aly/ay$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "page_name"

    .line 115
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lu/aly/ay$e;->b:Lu/aly/ay$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "duration"

    .line 117
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ay;->c:Ljava/util/Map;

    .line 119
    const-class v0, Lu/aly/ay;

    sget-object v1, Lu/aly/ay;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/ay;->i:B

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lu/aly/ay;-><init>()V

    .line 130
    iput-object p1, p0, Lu/aly/ay;->a:Ljava/lang/String;

    .line 131
    iput-wide p2, p0, Lu/aly/ay;->b:J

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ay;->b(Z)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lu/aly/ay;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/ay;->i:B

    .line 139
    iget-byte v0, p1, Lu/aly/ay;->i:B

    iput-byte v0, p0, Lu/aly/ay;->i:B

    .line 140
    invoke-virtual {p1}, Lu/aly/ay;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p1, Lu/aly/ay;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    .line 143
    :cond_0
    iget-wide v0, p1, Lu/aly/ay;->b:J

    iput-wide v0, p0, Lu/aly/ay;->b:J

    .line 144
    return-void
.end method

.method static synthetic k()Lu/aly/bR;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/ay;->d:Lu/aly/bR;

    return-object v0
.end method

.method static synthetic l()Lu/aly/bK;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/ay;->e:Lu/aly/bK;

    return-object v0
.end method

.method static synthetic m()Lu/aly/bK;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/ay;->f:Lu/aly/bK;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/ay$e;
    .locals 1

    .prologue
    .line 205
    invoke-static {p1}, Lu/aly/ay$e;->a(I)Lu/aly/ay$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/ay;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lu/aly/ay;

    invoke-direct {v0, p0}, Lu/aly/ay;-><init>(Lu/aly/ay;)V

    return-object v0
.end method

.method public a(J)Lu/aly/ay;
    .locals 1

    .prologue
    .line 186
    iput-wide p1, p0, Lu/aly/ay;->b:J

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ay;->b(Z)V

    .line 188
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ay;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lu/aly/ay;->a:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public a(Lu/aly/bN;)V
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lu/aly/ay;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/bN;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bU;

    invoke-interface {v0}, Lu/aly/bU;->a()Lu/aly/bT;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/bT;->a(Lu/aly/bN;Lu/aly/bz;)V

    .line 210
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    .line 179
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/bE;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lu/aly/ay;->a(I)Lu/aly/ay$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/aly/ay;->b(Z)V

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/ay;->b:J

    .line 155
    return-void
.end method

.method public b(Lu/aly/bN;)V
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lu/aly/ay;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/bN;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bU;

    invoke-interface {v0}, Lu/aly/bU;->a()Lu/aly/bT;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/bT;->b(Lu/aly/bN;Lu/aly/bz;)V

    .line 214
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 201
    iget-byte v0, p0, Lu/aly/ay;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ay;->i:B

    .line 202
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lu/aly/ay;->b:J

    return-wide v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lu/aly/ay;->a()Lu/aly/ay;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 192
    iget-byte v0, p0, Lu/aly/ay;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ay;->i:B

    .line 193
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 197
    iget-byte v0, p0, Lu/aly/ay;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lu/aly/ay;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'page_name\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/ay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v1, "page_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lu/aly/ay;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 223
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-wide v2, p0, Lu/aly/ay;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    iget-object v1, p0, Lu/aly/ay;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
