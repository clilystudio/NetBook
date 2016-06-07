.class public Lu/aly/ar;
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
        "Lu/aly/ar;",
        "Lu/aly/ar$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/ar$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lu/aly/bR;

.field private static final f:Lu/aly/bK;

.field private static final g:Lu/aly/bK;

.field private static final h:Lu/aly/bK;

.field private static final i:Ljava/util/Map;
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

.field public c:I

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lu/aly/bR;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lu/aly/bR;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ar;->e:Lu/aly/bR;

    .line 35
    new-instance v0, Lu/aly/bK;

    const-string v1, "identity"

    invoke-direct {v0, v1, v8, v5}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->f:Lu/aly/bK;

    .line 36
    new-instance v0, Lu/aly/bK;

    const-string v1, "ts"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->g:Lu/aly/bK;

    .line 37
    new-instance v0, Lu/aly/bK;

    const-string v1, "version"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ar;->h:Lu/aly/bK;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sput-object v0, Lu/aly/ar;->i:Ljava/util/Map;

    const-class v1, Lu/aly/bV;

    new-instance v2, Lu/aly/E;

    invoke-direct {v2, v3}, Lu/aly/E;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/ar;->i:Ljava/util/Map;

    const-class v1, Lu/aly/bW;

    new-instance v2, Lu/aly/G;

    invoke-direct {v2, v3}, Lu/aly/G;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ar$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "identity"

    .line 121
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v8}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "ts"

    .line 123
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v7}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "version"

    .line 125
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v6}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ar;->d:Ljava/util/Map;

    .line 127
    const-class v0, Lu/aly/ar;

    sget-object v1, Lu/aly/ar;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/ar;->l:B

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-direct {p0}, Lu/aly/ar;-><init>()V

    .line 139
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 140
    iput-wide p2, p0, Lu/aly/ar;->b:J

    .line 141
    invoke-virtual {p0, v0}, Lu/aly/ar;->b(Z)V

    .line 142
    iput p4, p0, Lu/aly/ar;->c:I

    .line 143
    invoke-virtual {p0, v0}, Lu/aly/ar;->c(Z)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lu/aly/ar;)V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/ar;->l:B

    .line 150
    iget-byte v0, p1, Lu/aly/ar;->l:B

    iput-byte v0, p0, Lu/aly/ar;->l:B

    .line 151
    invoke-virtual {p1}, Lu/aly/ar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p1, Lu/aly/ar;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 154
    :cond_0
    iget-wide v0, p1, Lu/aly/ar;->b:J

    iput-wide v0, p0, Lu/aly/ar;->b:J

    .line 155
    iget v0, p1, Lu/aly/ar;->c:I

    iput v0, p0, Lu/aly/ar;->c:I

    .line 156
    return-void
.end method

.method static synthetic n()Lu/aly/bR;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/ar;->e:Lu/aly/bR;

    return-object v0
.end method

.method static synthetic o()Lu/aly/bK;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/ar;->f:Lu/aly/bK;

    return-object v0
.end method

.method static synthetic p()Lu/aly/bK;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/ar;->g:Lu/aly/bK;

    return-object v0
.end method

.method static synthetic q()Lu/aly/bK;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/ar;->h:Lu/aly/bK;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/ar;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0, p0}, Lu/aly/ar;-><init>(Lu/aly/ar;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ar;
    .locals 1

    .prologue
    .line 223
    iput p1, p0, Lu/aly/ar;->c:I

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ar;->c(Z)V

    .line 225
    return-object p0
.end method

.method public a(J)Lu/aly/ar;
    .locals 1

    .prologue
    .line 200
    iput-wide p1, p0, Lu/aly/ar;->b:J

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ar;->b(Z)V

    .line 202
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ar;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public a(Lu/aly/bN;)V
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lu/aly/ar;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/bN;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bU;

    invoke-interface {v0}, Lu/aly/bU;->a()Lu/aly/bT;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/bT;->a(Lu/aly/bN;Lu/aly/bz;)V

    .line 247
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 193
    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/bE;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lu/aly/ar;->c(I)Lu/aly/ar$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 165
    invoke-virtual {p0, v2}, Lu/aly/ar;->b(Z)V

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/ar;->b:J

    .line 167
    invoke-virtual {p0, v2}, Lu/aly/ar;->c(Z)V

    .line 168
    iput v2, p0, Lu/aly/ar;->c:I

    .line 169
    return-void
.end method

.method public b(Lu/aly/bN;)V
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lu/aly/ar;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/bN;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bU;

    invoke-interface {v0}, Lu/aly/bU;->a()Lu/aly/bT;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/bT;->b(Lu/aly/bN;Lu/aly/bz;)V

    .line 251
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 215
    iget-byte v0, p0, Lu/aly/ar;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->l:B

    .line 216
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/ar$e;
    .locals 1

    .prologue
    .line 242
    invoke-static {p1}, Lu/aly/ar$e;->a(I)Lu/aly/ar$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 238
    iget-byte v0, p0, Lu/aly/ar;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->l:B

    .line 239
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

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
    .line 196
    iget-wide v0, p0, Lu/aly/ar;->b:J

    return-wide v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lu/aly/ar;->a()Lu/aly/ar;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 206
    iget-byte v0, p0, Lu/aly/ar;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->l:B

    .line 207
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 211
    iget-byte v0, p0, Lu/aly/ar;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lu/aly/ar;->c:I

    return v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 229
    iget-byte v0, p0, Lu/aly/ar;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ar;->l:B

    .line 230
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 234
    iget-byte v0, p0, Lu/aly/ar;->l:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lu/aly/ar;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 260
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-wide v2, p0, Lu/aly/ar;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v1, p0, Lu/aly/ar;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    iget-object v1, p0, Lu/aly/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
