.class public Lu/aly/aj;
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
        "Lu/aly/aj;",
        "Lu/aly/aj$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lu/aly/aj$e;",
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
.field public a:I

.field public b:I

.field public c:I

.field private m:B

.field private n:[Lu/aly/aj$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 33
    new-instance v0, Lu/aly/bR;

    const-string v1, "ClientStats"

    invoke-direct {v0, v1}, Lu/aly/bR;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/aj;->e:Lu/aly/bR;

    .line 35
    new-instance v0, Lu/aly/bK;

    const-string v1, "successful_requests"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aj;->f:Lu/aly/bK;

    .line 36
    new-instance v0, Lu/aly/bK;

    const-string v1, "failed_requests"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aj;->g:Lu/aly/bK;

    .line 37
    new-instance v0, Lu/aly/bK;

    const-string v1, "last_request_spent_ms"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/bK;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aj;->h:Lu/aly/bK;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sput-object v0, Lu/aly/aj;->i:Ljava/util/Map;

    const-class v1, Lu/aly/bV;

    new-instance v2, Lu/aly/k;

    invoke-direct {v2, v3}, Lu/aly/k;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/aj;->i:Ljava/util/Map;

    const-class v1, Lu/aly/bW;

    new-instance v2, Lu/aly/m;

    invoke-direct {v2, v3}, Lu/aly/m;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/aj$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lu/aly/aj$e;->a:Lu/aly/aj$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "successful_requests"

    .line 123
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lu/aly/aj$e;->b:Lu/aly/aj$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "failed_requests"

    .line 125
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lu/aly/aj$e;->c:Lu/aly/aj$e;

    new-instance v2, Lu/aly/cl;

    const-string v3, "last_request_spent_ms"

    .line 127
    new-instance v4, Lu/aly/cm;

    invoke-direct {v4, v5}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/aj;->d:Ljava/util/Map;

    .line 129
    const-class v0, Lu/aly/aj;

    sget-object v1, Lu/aly/aj;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-byte v2, p0, Lu/aly/aj;->m:B

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/aj$e;

    sget-object v1, Lu/aly/aj$e;->c:Lu/aly/aj$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/aj;->n:[Lu/aly/aj$e;

    .line 133
    iput v2, p0, Lu/aly/aj;->a:I

    .line 135
    iput v2, p0, Lu/aly/aj;->b:I

    .line 137
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 143
    invoke-direct {p0}, Lu/aly/aj;-><init>()V

    .line 144
    iput p1, p0, Lu/aly/aj;->a:I

    .line 145
    invoke-virtual {p0, v0}, Lu/aly/aj;->a(Z)V

    .line 146
    iput p2, p0, Lu/aly/aj;->b:I

    .line 147
    invoke-virtual {p0, v0}, Lu/aly/aj;->b(Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lu/aly/aj;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-byte v2, p0, Lu/aly/aj;->m:B

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/aj$e;

    sget-object v1, Lu/aly/aj$e;->c:Lu/aly/aj$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/aj;->n:[Lu/aly/aj$e;

    .line 154
    iget-byte v0, p1, Lu/aly/aj;->m:B

    iput-byte v0, p0, Lu/aly/aj;->m:B

    .line 155
    iget v0, p1, Lu/aly/aj;->a:I

    iput v0, p0, Lu/aly/aj;->a:I

    .line 156
    iget v0, p1, Lu/aly/aj;->b:I

    iput v0, p0, Lu/aly/aj;->b:I

    .line 157
    iget v0, p1, Lu/aly/aj;->c:I

    iput v0, p0, Lu/aly/aj;->c:I

    .line 158
    return-void
.end method

.method static synthetic n()Lu/aly/bR;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lu/aly/aj;->e:Lu/aly/bR;

    return-object v0
.end method

.method static synthetic o()Lu/aly/bK;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lu/aly/aj;->f:Lu/aly/bK;

    return-object v0
.end method

.method static synthetic p()Lu/aly/bK;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lu/aly/aj;->g:Lu/aly/bK;

    return-object v0
.end method

.method static synthetic q()Lu/aly/bK;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lu/aly/aj;->h:Lu/aly/bK;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/aj;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lu/aly/aj;

    invoke-direct {v0, p0}, Lu/aly/aj;-><init>(Lu/aly/aj;)V

    return-object v0
.end method

.method public a(I)Lu/aly/aj;
    .locals 1

    .prologue
    .line 179
    iput p1, p0, Lu/aly/aj;->a:I

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/aj;->a(Z)V

    .line 181
    return-object p0
.end method

.method public a(Lu/aly/bN;)V
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lu/aly/aj;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/bN;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bU;

    invoke-interface {v0}, Lu/aly/bU;->a()Lu/aly/bT;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/bT;->a(Lu/aly/bN;Lu/aly/bz;)V

    .line 249
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 194
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/aj;->m:B

    .line 195
    return-void
.end method

.method public synthetic b(I)Lu/aly/bE;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lu/aly/aj;->e(I)Lu/aly/aj$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lu/aly/aj;->a:I

    .line 168
    iput v0, p0, Lu/aly/aj;->b:I

    .line 170
    invoke-virtual {p0, v0}, Lu/aly/aj;->c(Z)V

    .line 171
    iput v0, p0, Lu/aly/aj;->c:I

    .line 172
    return-void
.end method

.method public b(Lu/aly/bN;)V
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lu/aly/aj;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/bN;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bU;

    invoke-interface {v0}, Lu/aly/bU;->a()Lu/aly/bT;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/bT;->b(Lu/aly/bN;Lu/aly/bz;)V

    .line 253
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 217
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/aj;->m:B

    .line 218
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lu/aly/aj;->a:I

    return v0
.end method

.method public c(I)Lu/aly/aj;
    .locals 1

    .prologue
    .line 202
    iput p1, p0, Lu/aly/aj;->b:I

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/aj;->b(Z)V

    .line 204
    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 240
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/aj;->m:B

    .line 241
    return-void
.end method

.method public d(I)Lu/aly/aj;
    .locals 1

    .prologue
    .line 225
    iput p1, p0, Lu/aly/aj;->c:I

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/aj;->c(Z)V

    .line 227
    return-object p0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 185
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/aj;->m:B

    .line 186
    return-void
.end method

.method public e(I)Lu/aly/aj$e;
    .locals 1

    .prologue
    .line 244
    invoke-static {p1}, Lu/aly/aj$e;->a(I)Lu/aly/aj$e;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 190
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lu/aly/aj;->b:I

    return v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lu/aly/aj;->a()Lu/aly/aj;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 208
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/aj;->m:B

    .line 209
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 213
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lu/aly/aj;->c:I

    return v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 231
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/aj;->m:B

    .line 232
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 236
    iget-byte v0, p0, Lu/aly/aj;->m:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v1, "successful_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lu/aly/aj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "failed_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget v1, p0, Lu/aly/aj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lu/aly/aj;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "last_request_spent_ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lu/aly/aj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
