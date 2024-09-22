.class public Lorg/kxml2/io/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000


# instance fields
.field private auto:I

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private indent:[Z

.field private mPos:I

.field private final mText:[C

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private pending:Z

.field private unicode:Z

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    .line 42
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    .line 45
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    .line 47
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    return-void
.end method

.method private append(C)V
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    .line 53
    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    aput-char p1, v0, v1

    .line 56
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;II)V

    .line 76
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    :goto_0
    if-lez p3, :cond_2

    .line 60
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    .line 61
    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    .line 63
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    sub-int/2addr v1, v0

    .line 64
    .local v1, "batch":I
    if-le v1, p3, :cond_1

    .line 65
    move v1, p3

    .line 67
    :cond_1
    add-int v0, p2, v1

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    invoke-virtual {p1, p2, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 68
    add-int/2addr p2, v1

    .line 69
    sub-int/2addr p3, v1

    .line 70
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    .line 71
    .end local v1    # "batch":I
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method private final check(Z)V
    .locals 5
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 93
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    array-length v1, v1

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-gt v1, v2, :cond_1

    .line 94
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [Z

    .line 95
    .local v1, "hlp":[Z
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    .line 98
    .end local v1    # "hlp":[Z
    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v4, v4, -0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v1, v2

    .line 100
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_5

    .line 101
    const-string v2, " xmlns"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 104
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_4
    :goto_1
    const-string v2, "=\""

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    const/16 v3, 0x22

    invoke-direct {p0, v2, v3}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 110
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    array-length v1, v1

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_6

    .line 114
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [I

    .line 115
    .local v1, "hlp":[I
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    .line 119
    .end local v1    # "hlp":[I
    :cond_6
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v2, v2, v3

    aput v2, v0, v1

    .line 122
    if-eqz p1, :cond_7

    .line 123
    const-string v0, " />"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_2

    .line 125
    :cond_7
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 127
    :goto_2
    return-void
.end method

.method private final flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 81
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 82
    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    .line 84
    :cond_0
    return-void
.end method

.method private final getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "includeDefault"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x2

    .line 239
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 241
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 242
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 243
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 244
    .local v1, "cand":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x2

    .line 245
    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_2

    .line 247
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    const/4 v1, 0x0

    .line 249
    goto :goto_2

    .line 246
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    .end local v2    # "j":I
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 253
    return-object v1

    .line 240
    .end local v1    # "cand":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_4
    if-nez p3, :cond_5

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    const-string v0, ""

    .local v0, "prefix":Ljava/lang/String;
    goto :goto_5

    .line 266
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .restart local v0    # "prefix":Ljava/lang/String;
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x2

    .line 268
    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_8

    .line 270
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 271
    const/4 v0, 0x0

    .line 272
    goto :goto_4

    .line 269
    :cond_7
    add-int/lit8 v1, v1, -0x2

    goto :goto_3

    .line 276
    .end local v1    # "i":I
    :cond_8
    :goto_4
    if-eqz v0, :cond_6

    .line 279
    :goto_5
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 280
    .local v1, "p":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 281
    invoke-virtual {p0, v0, p1}, Lorg/kxml2/io/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iput-boolean v1, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 283
    return-object v0
.end method

.method private static reportInvalidCharacter(C)V
    .locals 3
    .param p0, "ch"    # C

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeEscaped(Ljava/lang/String;I)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "quot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 132
    .local v2, "c":C
    const/16 v3, 0xd

    const/4 v4, 0x1

    if-eq v2, v3, :cond_c

    const/16 v3, 0x26

    if-eq v2, v3, :cond_b

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_a

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_9

    packed-switch v2, :pswitch_data_0

    .line 151
    if-ne v2, p2, :cond_1

    .line 152
    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    const-string v3, "&quot;"

    goto :goto_1

    :cond_0
    const-string v3, "&apos;"

    :goto_1
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 153
    goto/16 :goto_4

    .line 162
    :cond_1
    const/16 v3, 0x20

    if-lt v2, v3, :cond_2

    const v3, 0xd7ff

    if-le v2, v3, :cond_3

    :cond_2
    const v3, 0xe000

    if-lt v2, v3, :cond_4

    const v3, 0xfffd

    if-gt v2, v3, :cond_4

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v0

    .line 163
    .local v3, "allowedInXml":Z
    :goto_2
    if-eqz v3, :cond_7

    .line 164
    iget-boolean v5, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    if-nez v5, :cond_6

    const/16 v5, 0x7f

    if-ge v2, v5, :cond_5

    goto :goto_3

    .line 167
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_4

    .line 165
    :cond_6
    :goto_3
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_4

    .line 169
    :cond_7
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_8

    .line 170
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v2, v5}, Lorg/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 173
    :cond_8
    invoke-static {v2}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    .end local v2    # "c":C
    .end local v3    # "allowedInXml":Z
    goto :goto_4

    .line 145
    .restart local v2    # "c":C
    :cond_9
    const-string v3, "&gt;"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 146
    goto :goto_4

    .line 148
    :cond_a
    const-string v3, "&lt;"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 149
    goto :goto_4

    .line 142
    :cond_b
    const-string v3, "&amp;"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 143
    goto :goto_4

    .line 136
    :cond_c
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_d

    .line 137
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_4

    .line 139
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 140
    nop

    .line 130
    .end local v2    # "c":C
    :goto_4
    add-int/2addr v1, v4

    goto/16 :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeSurrogate(CC)V
    .locals 3
    .param p1, "high"    # C
    .param p2, "low"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 612
    .local v0, "codePoint":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 613
    return-void

    .line 605
    .end local v0    # "codePoint":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad surrogate pair (U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_4

    .line 459
    if-nez p1, :cond_0

    .line 460
    const-string p1, ""

    .line 466
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    const-string v0, ""

    goto :goto_0

    .line 468
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 487
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 488
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 489
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 491
    :cond_2
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 492
    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 493
    const/16 v1, 0x22

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x27

    .line 494
    .local v1, "q":C
    :goto_1
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 495
    invoke-direct {p0, p3, v1}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 496
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 498
    return-object p0

    .line 455
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "q":C
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal position for attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 580
    const-string v1, "]]>"

    const-string v2, "]]]]><![CDATA[>"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 581
    const-string v1, "<![CDATA["

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 582
    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 583
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 584
    .local v2, "ch":C
    const/16 v3, 0x20

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    const v3, 0xd7ff

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const v3, 0xe000

    if-lt v2, v3, :cond_1

    const v3, 0xfffd

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v4

    .line 587
    .local v3, "allowedInCdata":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 588
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_3

    .line 589
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_4

    .line 591
    const-string v5, "]]>"

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 592
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v2, v5}, Lorg/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    .line 593
    const-string v5, "<![CDATA["

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_3

    .line 595
    :cond_4
    invoke-static {v2}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    .line 582
    .end local v2    # "ch":C
    .end local v3    # "allowedInCdata":Z
    :goto_3
    add-int/2addr v1, v4

    goto :goto_0

    .line 598
    .end local v1    # "i":I
    :cond_5
    const-string v0, "]]>"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 618
    const-string v0, "<!--"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 619
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 620
    const-string v0, "-->"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "dd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const-string v0, "<!DOCTYPE"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 196
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 197
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    :goto_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/kxml2/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->flush()V

    .line 204
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 515
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    .line 519
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    aget-object v0, v0, v2

    if-nez v0, :cond_6

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    aget-object v0, v0, v2

    .line 522
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    aget-object v0, v0, v2

    .line 523
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 526
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_3

    .line 527
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 528
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    goto :goto_1

    .line 531
    :cond_3
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/2addr v2, v1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    .line 532
    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-ge v0, v2, :cond_4

    .line 534
    const-string v2, "  "

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    .end local v0    # "i":I
    :cond_4
    const-string v0, "</"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    aget-object v0, v0, v2

    .line 539
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 540
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 541
    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 543
    :cond_5
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 544
    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 547
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v1, v1, v3

    aput v1, v0, v2

    .line 548
    return-object p0

    .line 524
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> does not match start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 208
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 209
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 210
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 211
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 503
    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    .line 504
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 560
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    :goto_0
    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 215
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v0, v0, v1

    goto :goto_0

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 556
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .line 552
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "create"    # Z

    .line 225
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported property"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "pi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 626
    const-string v0, "<?"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 628
    const-string v0, "?>"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 296
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean p2, v0, v1

    .line 302
    return-void

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported Feature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    if-eqz p1, :cond_2

    .line 362
    nop

    .line 363
    if-nez p2, :cond_0

    .line 364
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 365
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 362
    :goto_0
    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 366
    iput-object p2, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    .line 367
    if-eqz p2, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    .line 370
    :cond_1
    return-void

    .line 361
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "os == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    .line 338
    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    .line 345
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 346
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 347
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v0, v2

    .line 348
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v0, v3

    .line 349
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v3, "xml"

    aput-object v3, v0, v1

    .line 350
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 351
    iput-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 352
    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    .line 353
    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    .line 355
    iput-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    .line 356
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 313
    if-nez p1, :cond_0

    .line 314
    const-string p1, ""

    .line 315
    :cond_0
    if-nez p2, :cond_1

    .line 316
    const-string p2, ""

    .line 318
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, v0}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "defined":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    return-void

    .line 325
    :cond_2
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/2addr v4, v1

    aget v5, v3, v4

    add-int/lit8 v6, v5, 0x1

    aput v6, v3, v4

    shl-int/lit8 v1, v5, 0x1

    .line 327
    .local v1, "pos":I
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_3

    .line 328
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    .line 329
    .local v3, "hlp":[Ljava/lang/String;
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    invoke-static {v4, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iput-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    .line 333
    .end local v3    # "hlp":[Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .local v3, "pos":I
    aput-object p1, v0, v1

    .line 334
    .end local v1    # "pos":I
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aput-object p2, v0, v3

    .line 335
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    const-string v0, "<?xml version=\'1.0\' "

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 375
    if-eqz p1, :cond_0

    .line 376
    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    .line 377
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 383
    const-string v0, "encoding=\'"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 385
    const-string v0, "\' "

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 388
    :cond_1
    if-eqz p2, :cond_3

    .line 389
    const-string v0, "standalone=\'"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "yes"

    goto :goto_0

    :cond_2
    const-string v0, "no"

    :goto_0
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 391
    const-string v0, "\' "

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 393
    :cond_3
    const-string v0, "?>"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 403
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 404
    const-string v1, "\r\n"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 405
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-ge v1, v2, :cond_0

    .line 406
    const-string v2, "  "

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x3

    .line 411
    .local v1, "esp":I
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v3, v1, 0x3

    if-ge v2, v3, :cond_1

    .line 412
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    .line 413
    .local v2, "hlp":[Ljava/lang/String;
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iput-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    .line 418
    .end local v2    # "hlp":[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 419
    const-string v2, ""

    goto :goto_1

    .line 420
    :cond_2
    invoke-direct {p0, p1, v0, v0}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "prefix":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 423
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v3, v3, v4

    .line 424
    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/2addr v5, v0

    aget v4, v4, v5

    if-ge v3, v4, :cond_5

    .line 426
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 427
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 432
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    .local v4, "esp":I
    aput-object p1, v3, v1

    .line 433
    .end local v1    # "esp":I
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .local v3, "esp":I
    aput-object v2, v1, v4

    .line 434
    .end local v4    # "esp":I
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    aput-object p2, v1, v3

    .line 436
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 437
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 438
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 439
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    .line 442
    :cond_6
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    .line 444
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    .line 446
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    .line 565
    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean v0, v1, v2

    .line 566
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 567
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    return-object p0
.end method
